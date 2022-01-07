
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_mail_session_t ;
struct TYPE_5__ {int state; int* header_end; int* header_name_start; int* header_name_end; int* header_start; TYPE_1__* response; } ;
typedef TYPE_2__ ngx_mail_auth_http_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_4__ {int* pos; int* last; } ;




 int NGX_AGAIN ;
 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_mail_auth_http_parse_header_line(ngx_mail_session_t *s,
    ngx_mail_auth_http_ctx_t *ctx)
{
    u_char c, ch, *p;
    enum {
        sw_start = 0,
        sw_name,
        sw_space_before_value,
        sw_value,
        sw_space_after_value,
        sw_almost_done,
        sw_header_almost_done
    } state;

    state = ctx->state;

    for (p = ctx->response->pos; p < ctx->response->last; p++) {
        ch = *p;

        switch (state) {


        case sw_start:

            switch (ch) {
            case 129:
                ctx->header_end = p;
                state = sw_header_almost_done;
                break;
            case 128:
                ctx->header_end = p;
                goto header_done;
            default:
                state = sw_name;
                ctx->header_name_start = p;

                c = (u_char) (ch | 0x20);
                if (c >= 'a' && c <= 'z') {
                    break;
                }

                if (ch >= '0' && ch <= '9') {
                    break;
                }

                return NGX_ERROR;
            }
            break;


        case sw_name:
            c = (u_char) (ch | 0x20);
            if (c >= 'a' && c <= 'z') {
                break;
            }

            if (ch == ':') {
                ctx->header_name_end = p;
                state = sw_space_before_value;
                break;
            }

            if (ch == '-') {
                break;
            }

            if (ch >= '0' && ch <= '9') {
                break;
            }

            if (ch == 129) {
                ctx->header_name_end = p;
                ctx->header_start = p;
                ctx->header_end = p;
                state = sw_almost_done;
                break;
            }

            if (ch == 128) {
                ctx->header_name_end = p;
                ctx->header_start = p;
                ctx->header_end = p;
                goto done;
            }

            return NGX_ERROR;


        case sw_space_before_value:
            switch (ch) {
            case ' ':
                break;
            case 129:
                ctx->header_start = p;
                ctx->header_end = p;
                state = sw_almost_done;
                break;
            case 128:
                ctx->header_start = p;
                ctx->header_end = p;
                goto done;
            default:
                ctx->header_start = p;
                state = sw_value;
                break;
            }
            break;


        case sw_value:
            switch (ch) {
            case ' ':
                ctx->header_end = p;
                state = sw_space_after_value;
                break;
            case 129:
                ctx->header_end = p;
                state = sw_almost_done;
                break;
            case 128:
                ctx->header_end = p;
                goto done;
            }
            break;


        case sw_space_after_value:
            switch (ch) {
            case ' ':
                break;
            case 129:
                state = sw_almost_done;
                break;
            case 128:
                goto done;
            default:
                state = sw_value;
                break;
            }
            break;


        case sw_almost_done:
            switch (ch) {
            case 128:
                goto done;
            default:
                return NGX_ERROR;
            }


        case sw_header_almost_done:
            switch (ch) {
            case 128:
                goto header_done;
            default:
                return NGX_ERROR;
            }
        }
    }

    ctx->response->pos = p;
    ctx->state = state;

    return NGX_AGAIN;

done:

    ctx->response->pos = p + 1;
    ctx->state = sw_start;

    return NGX_OK;

header_done:

    ctx->response->pos = p + 1;
    ctx->state = sw_start;

    return NGX_DONE;
}
