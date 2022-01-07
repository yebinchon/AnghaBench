
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int log; int mtime; int access; int size; TYPE_4__* data; } ;
typedef TYPE_2__ ngx_tree_ctx_t ;
struct TYPE_11__ {size_t len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {size_t len; int data; } ;
struct TYPE_12__ {size_t len; TYPE_1__ path; } ;
typedef TYPE_4__ ngx_http_dav_copy_ctx_t ;
struct TYPE_13__ {int log; int time; int access; scalar_t__ buf_size; int size; } ;
typedef TYPE_5__ ngx_copy_file_t ;


 int NGX_ABORT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int * ngx_alloc (size_t,int ) ;
 int ngx_copy_file (int *,int *,TYPE_5__*) ;
 int * ngx_cpymem (int *,int ,size_t) ;
 int ngx_cpystrn (int *,int *,size_t) ;
 int ngx_free (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_dav_copy_tree_file(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    u_char *p, *file;
    size_t len;
    ngx_copy_file_t cf;
    ngx_http_dav_copy_ctx_t *copy;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy file: \"%s\"", path->data);

    copy = ctx->data;

    len = copy->path.len + path->len;

    file = ngx_alloc(len + 1, ctx->log);
    if (file == ((void*)0)) {
        return NGX_ABORT;
    }

    p = ngx_cpymem(file, copy->path.data, copy->path.len);
    (void) ngx_cpystrn(p, path->data + copy->len, path->len - copy->len + 1);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy file to: \"%s\"", file);

    cf.size = ctx->size;
    cf.buf_size = 0;
    cf.access = ctx->access;
    cf.time = ctx->mtime;
    cf.log = ctx->log;

    (void) ngx_copy_file(path->data, file, &cf);

    ngx_free(file);

    return NGX_OK;
}
