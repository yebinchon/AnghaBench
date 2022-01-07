
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char u_char ;
typedef scalar_t__ off_t ;
typedef int ngx_uint_t ;
struct TYPE_10__ {scalar_t__ size; int fs_size; TYPE_3__* data; int log; } ;
typedef TYPE_1__ ngx_tree_ctx_t ;
struct TYPE_11__ {int len; char* data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {int bsize; } ;
typedef TYPE_3__ ngx_http_file_cache_t ;
typedef int ngx_http_file_cache_header_t ;
struct TYPE_13__ {scalar_t__ length; int fs_size; char* key; } ;
typedef TYPE_4__ ngx_http_cache_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_CACHE_KEY_LEN ;
 int NGX_LOG_CRIT ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_hextoi (char*,int) ;
 scalar_t__ ngx_http_file_cache_add (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*,char*) ;
 int ngx_memzero (TYPE_4__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_file_cache_add_file(ngx_tree_ctx_t *ctx, ngx_str_t *name)
{
    u_char *p;
    ngx_int_t n;
    ngx_uint_t i;
    ngx_http_cache_t c;
    ngx_http_file_cache_t *cache;

    if (name->len < 2 * NGX_HTTP_CACHE_KEY_LEN) {
        return NGX_ERROR;
    }






    if (name->len >= 2 * NGX_HTTP_CACHE_KEY_LEN + 1 + 10
        && name->data[name->len - 10 - 1] == '.')
    {
        return NGX_OK;
    }

    if (ctx->size < (off_t) sizeof(ngx_http_file_cache_header_t)) {
        ngx_log_error(NGX_LOG_CRIT, ctx->log, 0,
                      "cache file \"%s\" is too small", name->data);
        return NGX_ERROR;
    }

    ngx_memzero(&c, sizeof(ngx_http_cache_t));
    cache = ctx->data;

    c.length = ctx->size;
    c.fs_size = (ctx->fs_size + cache->bsize - 1) / cache->bsize;

    p = &name->data[name->len - 2 * NGX_HTTP_CACHE_KEY_LEN];

    for (i = 0; i < NGX_HTTP_CACHE_KEY_LEN; i++) {
        n = ngx_hextoi(p, 2);

        if (n == NGX_ERROR) {
            return NGX_ERROR;
        }

        p += 2;

        c.key[i] = (u_char) n;
    }

    return ngx_http_file_cache_add(cache, &c);
}
