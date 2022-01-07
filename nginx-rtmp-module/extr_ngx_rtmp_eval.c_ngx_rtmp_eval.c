
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_8__ {char* data; size_t len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_rtmp_eval_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {char* pos; char* last; char* start; char* end; } ;
typedef TYPE_2__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int NGX_RTMP_EVAL_BUFLEN ;
 char* ngx_alloc (int,int *) ;
 int ngx_rtmp_eval_append (TYPE_2__*,char*,int,int *) ;
 int ngx_rtmp_eval_append_var (void*,TYPE_2__*,int **,TYPE_1__*,int *) ;

ngx_int_t
ngx_rtmp_eval(void *ctx, ngx_str_t *in, ngx_rtmp_eval_t **e, ngx_str_t *out,
    ngx_log_t *log)
{
    u_char c, *p;
    ngx_str_t name;
    ngx_buf_t b;
    ngx_uint_t n;

    enum {
        NORMAL,
        ESCAPE,
        NAME,
        SNAME
    } state = NORMAL;

    b.pos = b.last = b.start = ngx_alloc(NGX_RTMP_EVAL_BUFLEN, log);
    if (b.pos == ((void*)0)) {
        return NGX_ERROR;
    }

    b.end = b.pos + NGX_RTMP_EVAL_BUFLEN;
    name.data = ((void*)0);

    for (n = 0; n < in->len; ++n) {
        p = &in->data[n];
        c = *p;

        switch (state) {
            case SNAME:
                if (c != '}') {
                    continue;
                }

                name.len = p - name.data;
                ngx_rtmp_eval_append_var(ctx, &b, e, &name, log);

                state = NORMAL;

                continue;

            case NAME:
                if (c == '{' && name.data == p) {
                    ++name.data;
                    state = SNAME;
                    continue;
                }
                if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
                    continue;
                }

                name.len = p - name.data;
                ngx_rtmp_eval_append_var(ctx, &b, e, &name, log);


            case NORMAL:
                switch (c) {
                    case '$':
                        name.data = p + 1;
                        state = NAME;
                        continue;
                    case '\\':
                        state = ESCAPE;
                        continue;
                }

            case ESCAPE:
                ngx_rtmp_eval_append(&b, &c, 1, log);
                state = NORMAL;
                break;

        }
    }

    if (state == NAME) {
        p = &in->data[n];
        name.len = p - name.data;
        ngx_rtmp_eval_append_var(ctx, &b, e, &name, log);
    }

    c = 0;
    ngx_rtmp_eval_append(&b, &c, 1, log);

    out->data = b.pos;
    out->len = b.last - b.pos - 1;

    return NGX_OK;
}
