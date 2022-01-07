
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_17__ {int log; int fd; } ;
struct TYPE_20__ {char* warn; int access; int offset; int clean; int persistent; int pool; int path; TYPE_16__ file; int log_level; } ;
typedef TYPE_3__ ngx_temp_file_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {int pool; scalar_t__ request_body_file_group_access; int request_body_in_clean_file; int request_body_in_persistent_file; int request_body_file_log_level; TYPE_1__* connection; TYPE_5__* request_body; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_22__ {TYPE_7__* bufs; TYPE_3__* temp_file; } ;
typedef TYPE_5__ ngx_http_request_body_t ;
struct TYPE_23__ {int client_body_temp_path; } ;
typedef TYPE_6__ ngx_http_core_loc_conf_t ;
struct TYPE_24__ {struct TYPE_24__* next; TYPE_2__* buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_19__ {int last; int pos; } ;
struct TYPE_18__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_create_temp_file (TYPE_16__*,int ,int ,int ,int ,int) ;
 int ngx_free_chain (int ,TYPE_7__*) ;
 int ngx_http_core_module ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_7__*) ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_write_chain_to_temp_file (TYPE_3__*,TYPE_7__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_write_request_body(ngx_http_request_t *r)
{
    ssize_t n;
    ngx_chain_t *cl, *ln;
    ngx_temp_file_t *tf;
    ngx_http_request_body_t *rb;
    ngx_http_core_loc_conf_t *clcf;

    rb = r->request_body;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http write client request body, bufs %p", rb->bufs);

    if (rb->temp_file == ((void*)0)) {
        tf = ngx_pcalloc(r->pool, sizeof(ngx_temp_file_t));
        if (tf == ((void*)0)) {
            return NGX_ERROR;
        }

        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

        tf->file.fd = NGX_INVALID_FILE;
        tf->file.log = r->connection->log;
        tf->path = clcf->client_body_temp_path;
        tf->pool = r->pool;
        tf->warn = "a client request body is buffered to a temporary file";
        tf->log_level = r->request_body_file_log_level;
        tf->persistent = r->request_body_in_persistent_file;
        tf->clean = r->request_body_in_clean_file;

        if (r->request_body_file_group_access) {
            tf->access = 0660;
        }

        rb->temp_file = tf;

        if (rb->bufs == ((void*)0)) {


            if (ngx_create_temp_file(&tf->file, tf->path, tf->pool,
                                     tf->persistent, tf->clean, tf->access)
                != NGX_OK)
            {
                return NGX_ERROR;
            }

            return NGX_OK;
        }
    }

    if (rb->bufs == ((void*)0)) {
        return NGX_OK;
    }

    n = ngx_write_chain_to_temp_file(rb->temp_file, rb->bufs);



    if (n == NGX_ERROR) {
        return NGX_ERROR;
    }

    rb->temp_file->offset += n;



    for (cl = rb->bufs; cl; ) {

        cl->buf->pos = cl->buf->last;

        ln = cl;
        cl = cl->next;
        ngx_free_chain(r->pool, ln);
    }

    rb->bufs = ((void*)0);

    return NGX_OK;
}
