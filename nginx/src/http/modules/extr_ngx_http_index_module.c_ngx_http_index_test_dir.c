
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_19__ {int len; char* data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_20__ {int test_dir; int test_only; scalar_t__ err; scalar_t__ is_dir; int failed; int errors; int valid; } ;
typedef TYPE_3__ ngx_open_file_info_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_22__ {int open_file_cache; int open_file_cache_errors; int open_file_cache_valid; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_18__ {int log; } ;


 scalar_t__ NGX_EACCES ;
 scalar_t__ NGX_ELOOP ;
 scalar_t__ NGX_EMLINK ;
 scalar_t__ NGX_ENOENT ;
 scalar_t__ NGX_HTTP_FORBIDDEN ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_index_error (TYPE_4__*,TYPE_5__*,char*,scalar_t__) ;
 scalar_t__ ngx_http_set_disable_symlinks (TYPE_4__*,TYPE_5__*,TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,char*,...) ;
 int ngx_memzero (TYPE_3__*,int) ;
 scalar_t__ ngx_open_cached_file (int ,TYPE_2__*,TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_index_test_dir(ngx_http_request_t *r, ngx_http_core_loc_conf_t *clcf,
    u_char *path, u_char *last)
{
    u_char c;
    ngx_str_t dir;
    ngx_open_file_info_t of;

    c = *last;
    if (c != '/' || path == last) {

        c = *(++last);
    }
    *last = '\0';

    dir.len = last - path;
    dir.data = path;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http index check dir: \"%V\"", &dir);

    ngx_memzero(&of, sizeof(ngx_open_file_info_t));

    of.test_dir = 1;
    of.test_only = 1;
    of.valid = clcf->open_file_cache_valid;
    of.errors = clcf->open_file_cache_errors;

    if (ngx_http_set_disable_symlinks(r, clcf, &dir, &of) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (ngx_open_cached_file(clcf->open_file_cache, &dir, &of, r->pool)
        != NGX_OK)
    {
        if (of.err) {
            if (of.err == NGX_ENOENT) {
                *last = c;
                return ngx_http_index_error(r, clcf, dir.data, NGX_ENOENT);
            }

            if (of.err == NGX_EACCES) {

                *last = c;







                return NGX_OK;
            }

            ngx_log_error(NGX_LOG_CRIT, r->connection->log, of.err,
                          "%s \"%s\" failed", of.failed, dir.data);
        }

        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    *last = c;

    if (of.is_dir) {
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                  "\"%s\" is not a directory", dir.data);

    return NGX_HTTP_INTERNAL_SERVER_ERROR;
}
