
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_int_t ;
struct TYPE_7__ {int code; int count; char* start; char* end; int http_version; } ;
typedef TYPE_1__ ngx_http_status_t ;
struct TYPE_8__ {int state; int http_major; int http_minor; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {char* pos; char* last; } ;
typedef TYPE_3__ ngx_buf_t ;




 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_OK ;

ngx_int_t
ngx_http_parse_status_line(ngx_http_request_t *r, ngx_buf_t *b,
    ngx_http_status_t *status)
{
    u_char ch;
    u_char *p;
    enum {
        sw_start = 0,
        sw_H,
        sw_HT,
        sw_HTT,
        sw_HTTP,
        sw_first_major_digit,
        sw_major_digit,
        sw_first_minor_digit,
        sw_minor_digit,
        sw_status,
        sw_space_after_status,
        sw_status_text,
        sw_almost_done
    } state;

    state = r->state;

    for (p = b->pos; p < b->last; p++) {
        ch = *p;

        switch (state) {


        case sw_start:
            switch (ch) {
            case 'H':
                state = sw_H;
                break;
            default:
                return NGX_ERROR;
            }
            break;

        case sw_H:
            switch (ch) {
            case 'T':
                state = sw_HT;
                break;
            default:
                return NGX_ERROR;
            }
            break;

        case sw_HT:
            switch (ch) {
            case 'T':
                state = sw_HTT;
                break;
            default:
                return NGX_ERROR;
            }
            break;

        case sw_HTT:
            switch (ch) {
            case 'P':
                state = sw_HTTP;
                break;
            default:
                return NGX_ERROR;
            }
            break;

        case sw_HTTP:
            switch (ch) {
            case '/':
                state = sw_first_major_digit;
                break;
            default:
                return NGX_ERROR;
            }
            break;


        case sw_first_major_digit:
            if (ch < '1' || ch > '9') {
                return NGX_ERROR;
            }

            r->http_major = ch - '0';
            state = sw_major_digit;
            break;


        case sw_major_digit:
            if (ch == '.') {
                state = sw_first_minor_digit;
                break;
            }

            if (ch < '0' || ch > '9') {
                return NGX_ERROR;
            }

            if (r->http_major > 99) {
                return NGX_ERROR;
            }

            r->http_major = r->http_major * 10 + (ch - '0');
            break;


        case sw_first_minor_digit:
            if (ch < '0' || ch > '9') {
                return NGX_ERROR;
            }

            r->http_minor = ch - '0';
            state = sw_minor_digit;
            break;


        case sw_minor_digit:
            if (ch == ' ') {
                state = sw_status;
                break;
            }

            if (ch < '0' || ch > '9') {
                return NGX_ERROR;
            }

            if (r->http_minor > 99) {
                return NGX_ERROR;
            }

            r->http_minor = r->http_minor * 10 + (ch - '0');
            break;


        case sw_status:
            if (ch == ' ') {
                break;
            }

            if (ch < '0' || ch > '9') {
                return NGX_ERROR;
            }

            status->code = status->code * 10 + (ch - '0');

            if (++status->count == 3) {
                state = sw_space_after_status;
                status->start = p - 2;
            }

            break;


        case sw_space_after_status:
            switch (ch) {
            case ' ':
                state = sw_status_text;
                break;
            case '.':
                state = sw_status_text;
                break;
            case 129:
                state = sw_almost_done;
                break;
            case 128:
                goto done;
            default:
                return NGX_ERROR;
            }
            break;


        case sw_status_text:
            switch (ch) {
            case 129:
                state = sw_almost_done;

                break;
            case 128:
                goto done;
            }
            break;


        case sw_almost_done:
            status->end = p - 1;
            switch (ch) {
            case 128:
                goto done;
            default:
                return NGX_ERROR;
            }
        }
    }

    b->pos = p;
    r->state = state;

    return NGX_AGAIN;

done:

    b->pos = p + 1;

    if (status->end == ((void*)0)) {
        status->end = p;
    }

    status->http_version = r->http_major * 1000 + r->http_minor;
    r->state = sw_start;

    return NGX_OK;
}
