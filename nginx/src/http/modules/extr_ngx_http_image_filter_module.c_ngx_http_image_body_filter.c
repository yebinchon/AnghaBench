
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_29__ {int len; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_28__ {int * content_type_lowcase; TYPE_3__ content_type; int content_type_len; } ;
struct TYPE_30__ {TYPE_2__ headers_out; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_31__ {int phase; int type; } ;
typedef TYPE_5__ ngx_http_image_filter_ctx_t ;
struct TYPE_32__ {int filter; } ;
typedef TYPE_6__ ngx_http_image_filter_conf_t ;
struct TYPE_33__ {int * next; int * buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_27__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_HTTP_IMAGE_DONE ;
 int NGX_HTTP_IMAGE_NONE ;



 int NGX_HTTP_IMAGE_SIZE ;

 int NGX_HTTP_IMAGE_TEST ;
 int NGX_HTTP_UNSUPPORTED_MEDIA_TYPE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_http_filter_finalize_request (TYPE_4__*,int *,int ) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_image_filter_module ;
 int * ngx_http_image_json (TYPE_4__*,int *) ;
 int * ngx_http_image_process (TYPE_4__*) ;
 int ngx_http_image_read (TYPE_4__*,TYPE_7__*) ;
 int ngx_http_image_send (TYPE_4__*,TYPE_5__*,TYPE_7__*) ;
 int ngx_http_image_test (TYPE_4__*,TYPE_7__*) ;
 TYPE_3__* ngx_http_image_types ;
 int ngx_http_next_body_filter (TYPE_4__*,TYPE_7__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_image_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t rc;
    ngx_str_t *ct;
    ngx_chain_t out;
    ngx_http_image_filter_ctx_t *ctx;
    ngx_http_image_filter_conf_t *conf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0, "image filter");

    if (in == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_image_filter_module);

    if (ctx == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    switch (ctx->phase) {

    case 128:

        ctx->type = ngx_http_image_test(r, in);

        conf = ngx_http_get_module_loc_conf(r, ngx_http_image_filter_module);

        if (ctx->type == NGX_HTTP_IMAGE_NONE) {

            if (conf->filter == NGX_HTTP_IMAGE_SIZE) {
                out.buf = ngx_http_image_json(r, ((void*)0));

                if (out.buf) {
                    out.next = ((void*)0);
                    ctx->phase = NGX_HTTP_IMAGE_DONE;

                    return ngx_http_image_send(r, ctx, &out);
                }
            }

            return ngx_http_filter_finalize_request(r,
                                              &ngx_http_image_filter_module,
                                              NGX_HTTP_UNSUPPORTED_MEDIA_TYPE);
        }



        ct = &ngx_http_image_types[ctx->type - 1];
        r->headers_out.content_type_len = ct->len;
        r->headers_out.content_type = *ct;
        r->headers_out.content_type_lowcase = ((void*)0);

        if (conf->filter == NGX_HTTP_IMAGE_TEST) {
            ctx->phase = 131;

            return ngx_http_image_send(r, ctx, in);
        }

        ctx->phase = 129;



    case 129:

        rc = ngx_http_image_read(r, in);

        if (rc == NGX_AGAIN) {
            return NGX_OK;
        }

        if (rc == NGX_ERROR) {
            return ngx_http_filter_finalize_request(r,
                                              &ngx_http_image_filter_module,
                                              NGX_HTTP_UNSUPPORTED_MEDIA_TYPE);
        }



    case 130:

        out.buf = ngx_http_image_process(r);

        if (out.buf == ((void*)0)) {
            return ngx_http_filter_finalize_request(r,
                                              &ngx_http_image_filter_module,
                                              NGX_HTTP_UNSUPPORTED_MEDIA_TYPE);
        }

        out.next = ((void*)0);
        ctx->phase = 131;

        return ngx_http_image_send(r, ctx, &out);

    case 131:

        return ngx_http_next_body_filter(r, in);

    default:

        rc = ngx_http_next_body_filter(r, ((void*)0));


        return (rc == NGX_OK) ? NGX_ERROR : rc;
    }
}
