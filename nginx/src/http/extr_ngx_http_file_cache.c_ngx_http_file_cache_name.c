
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_11__ {int len; int data; } ;
struct TYPE_15__ {int len; TYPE_1__ name; } ;
typedef TYPE_5__ ngx_path_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {TYPE_2__* connection; int pool; TYPE_7__* cache; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_13__ {int len; char* data; } ;
struct TYPE_14__ {TYPE_3__ name; } ;
struct TYPE_17__ {TYPE_4__ file; int key; } ;
typedef TYPE_7__ ngx_http_cache_t ;
struct TYPE_12__ {int log; } ;


 int NGX_ERROR ;
 int NGX_HTTP_CACHE_KEY_LEN ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_create_hashed_filename (TYPE_5__*,char*,int) ;
 char* ngx_hex_dump (char*,int ,int) ;
 int ngx_log_debug1 (int ,int ,int ,char*,char*) ;
 int ngx_memcpy (char*,int ,int) ;
 char* ngx_pnalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_name(ngx_http_request_t *r, ngx_path_t *path)
{
    u_char *p;
    ngx_http_cache_t *c;

    c = r->cache;

    if (c->file.name.len) {
        return NGX_OK;
    }

    c->file.name.len = path->name.len + 1 + path->len
                       + 2 * NGX_HTTP_CACHE_KEY_LEN;

    c->file.name.data = ngx_pnalloc(r->pool, c->file.name.len + 1);
    if (c->file.name.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(c->file.name.data, path->name.data, path->name.len);

    p = c->file.name.data + path->name.len + 1 + path->len;
    p = ngx_hex_dump(p, c->key, NGX_HTTP_CACHE_KEY_LEN);
    *p = '\0';

    ngx_create_hashed_filename(path, c->file.name.data, c->file.name.len);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "cache file: \"%s\"", c->file.name.data);

    return NGX_OK;
}
