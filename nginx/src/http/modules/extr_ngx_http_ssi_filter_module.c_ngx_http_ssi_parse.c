
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef char u_char ;
typedef int ngx_int_t ;
typedef int ngx_http_ssi_state_e ;
struct TYPE_18__ {int len; char* data; } ;
struct TYPE_13__ {int nelts; } ;
struct TYPE_19__ {int state; size_t looked; char* copy_end; char* pos; char* value_buf; int value_len; int saved_state; TYPE_4__* buf; int * copy_start; TYPE_5__ command; TYPE_10__* param; TYPE_11__ params; void* key; int saved; } ;
typedef TYPE_6__ ngx_http_ssi_ctx_t ;
struct TYPE_20__ {TYPE_3__* connection; int pool; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_17__ {char* last; int * pos; } ;
struct TYPE_16__ {int log; } ;
struct TYPE_15__ {int len; char* data; } ;
struct TYPE_14__ {int len; char* data; } ;
struct TYPE_12__ {TYPE_2__ key; TYPE_1__ value; } ;




 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_HTTP_SSI_COMMAND_LEN ;
 int NGX_HTTP_SSI_ERROR ;
 int NGX_HTTP_SSI_PARAM_LEN ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 TYPE_10__* ngx_array_push (TYPE_11__*) ;
 void* ngx_hash (void*,char) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_memcpy (char*,char*,int) ;
 void* ngx_pnalloc (int ,int) ;
__attribute__((used)) static ngx_int_t
ngx_http_ssi_parse(ngx_http_request_t *r, ngx_http_ssi_ctx_t *ctx)
{
    u_char *p, *value, *last, *copy_end, ch;
    size_t looked;
    ngx_http_ssi_state_e state;

    state = ctx->state;
    looked = ctx->looked;
    last = ctx->buf->last;
    copy_end = ctx->copy_end;

    for (p = ctx->pos; p < last; p++) {

        ch = *p;

        if (state == 129) {



            for ( ;; ) {
                if (ch == '<') {
                    copy_end = p;
                    looked = 1;
                    state = 128;

                    goto tag_started;
                }

                if (++p == last) {
                    break;
                }

                ch = *p;
            }

            ctx->state = state;
            ctx->pos = p;
            ctx->looked = looked;
            ctx->copy_end = p;

            if (ctx->copy_start == ((void*)0)) {
                ctx->copy_start = ctx->buf->pos;
            }

            return NGX_AGAIN;

        tag_started:

            continue;
        }

        switch (state) {

        case 129:

            break;

        case 128:
            switch (ch) {
            case '!':
                looked = 2;
                state = 146;
                break;

            case '<':
                copy_end = p;
                break;

            default:
                copy_end = p;
                looked = 0;
                state = 129;
                break;
            }

            break;

        case 146:
            switch (ch) {
            case '-':
                looked = 3;
                state = 145;
                break;

            case '<':
                copy_end = p;
                looked = 1;
                state = 128;
                break;

            default:
                copy_end = p;
                looked = 0;
                state = 129;
                break;
            }

            break;

        case 145:
            switch (ch) {
            case '-':
                looked = 4;
                state = 130;
                break;

            case '<':
                copy_end = p;
                looked = 1;
                state = 128;
                break;

            default:
                copy_end = p;
                looked = 0;
                state = 129;
                break;
            }

            break;

        case 130:
            switch (ch) {
            case '#':
                if (p - ctx->pos < 4) {
                    ctx->saved = 0;
                }
                looked = 0;
                state = 136;
                break;

            case '<':
                copy_end = p;
                looked = 1;
                state = 128;
                break;

            default:
                copy_end = p;
                looked = 0;
                state = 129;
                break;
            }

            break;

        case 136:
            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                break;

            default:
                ctx->command.len = 1;
                ctx->command.data = ngx_pnalloc(r->pool,
                                                NGX_HTTP_SSI_COMMAND_LEN);
                if (ctx->command.data == ((void*)0)) {
                    return NGX_ERROR;
                }

                ctx->command.data[0] = ch;

                ctx->key = 0;
                ctx->key = ngx_hash(ctx->key, ch);

                ctx->params.nelts = 0;

                state = 147;
                break;
            }

            break;

        case 147:
            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                state = 134;
                break;

            case '-':
                state = 144;
                break;

            default:
                if (ctx->command.len == NGX_HTTP_SSI_COMMAND_LEN) {
                    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                  "the \"%V%c...\" SSI command is too long",
                                  &ctx->command, ch);

                    state = 139;
                    break;
                }

                ctx->command.data[ctx->command.len++] = ch;
                ctx->key = ngx_hash(ctx->key, ch);
            }

            break;

        case 134:
            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                break;

            case '-':
                state = 144;
                break;

            default:
                ctx->param = ngx_array_push(&ctx->params);
                if (ctx->param == ((void*)0)) {
                    return NGX_ERROR;
                }

                ctx->param->key.len = 1;
                ctx->param->key.data = ngx_pnalloc(r->pool,
                                                   NGX_HTTP_SSI_PARAM_LEN);
                if (ctx->param->key.data == ((void*)0)) {
                    return NGX_ERROR;
                }

                ctx->param->key.data[0] = ch;

                ctx->param->value.len = 0;

                if (ctx->value_buf == ((void*)0)) {
                    ctx->param->value.data = ngx_pnalloc(r->pool,
                                                         ctx->value_len + 1);
                    if (ctx->param->value.data == ((void*)0)) {
                        return NGX_ERROR;
                    }

                } else {
                    ctx->param->value.data = ctx->value_buf;
                }

                state = 138;
                break;
            }

            break;

        case 138:
            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                state = 135;
                break;

            case '=':
                state = 133;
                break;

            case '-':
                state = 141;

                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "unexpected \"-\" symbol after \"%V\" "
                              "parameter in \"%V\" SSI command",
                              &ctx->param->key, &ctx->command);
                break;

            default:
                if (ctx->param->key.len == NGX_HTTP_SSI_PARAM_LEN) {
                    state = 139;
                    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                  "too long \"%V%c...\" parameter in "
                                  "\"%V\" SSI command",
                                  &ctx->param->key, ch, &ctx->command);
                    break;
                }

                ctx->param->key.data[ctx->param->key.len++] = ch;
            }

            break;

        case 135:
            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                break;

            case '=':
                state = 133;
                break;

            default:
                if (ch == '-') {
                    state = 141;
                } else {
                    state = 139;
                }

                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "unexpected \"%c\" symbol after \"%V\" "
                              "parameter in \"%V\" SSI command",
                              ch, &ctx->param->key, &ctx->command);
                break;
            }

            break;

        case 133:
            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                break;

            case '"':
                state = 142;
                break;

            case '\'':
                state = 131;
                break;

            default:
                if (ch == '-') {
                    state = 141;
                } else {
                    state = 139;
                }

                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "unexpected \"%c\" symbol before value of "
                              "\"%V\" parameter in \"%V\" SSI command",
                              ch, &ctx->param->key, &ctx->command);
                break;
            }

            break;

        case 142:
            switch (ch) {
            case '"':
                state = 137;
                break;

            case '\\':
                ctx->saved_state = 142;
                state = 132;



            default:
                if (ctx->param->value.len == ctx->value_len) {
                    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                  "too long \"%V%c...\" value of \"%V\" "
                                  "parameter in \"%V\" SSI command",
                                  &ctx->param->value, ch, &ctx->param->key,
                                  &ctx->command);
                    state = 139;
                    break;
                }

                ctx->param->value.data[ctx->param->value.len++] = ch;
            }

            break;

        case 131:
            switch (ch) {
            case '\'':
                state = 137;
                break;

            case '\\':
                ctx->saved_state = 131;
                state = 132;



            default:
                if (ctx->param->value.len == ctx->value_len) {
                    ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                                  "too long \"%V%c...\" value of \"%V\" "
                                  "parameter in \"%V\" SSI command",
                                  &ctx->param->value, ch, &ctx->param->key,
                                  &ctx->command);
                    state = 139;
                    break;
                }

                ctx->param->value.data[ctx->param->value.len++] = ch;
            }

            break;

        case 132:
            state = ctx->saved_state;

            if (ctx->param->value.len == ctx->value_len) {
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "too long \"%V%c...\" value of \"%V\" "
                              "parameter in \"%V\" SSI command",
                              &ctx->param->value, ch, &ctx->param->key,
                              &ctx->command);
                state = 139;
                break;
            }

            ctx->param->value.data[ctx->param->value.len++] = ch;

            break;

        case 137:

            if (ctx->param->value.len + 1 < ctx->value_len / 2) {
                value = ngx_pnalloc(r->pool, ctx->param->value.len + 1);
                if (value == ((void*)0)) {
                    return NGX_ERROR;
                }

                ngx_memcpy(value, ctx->param->value.data,
                           ctx->param->value.len);

                ctx->value_buf = ctx->param->value.data;
                ctx->param->value.data = value;

            } else {
                ctx->value_buf = ((void*)0);
            }

            switch (ch) {
            case ' ':
            case 149:
            case 148:
            case '\t':
                state = 134;
                break;

            case '-':
                state = 144;
                break;

            default:
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "unexpected \"%c\" symbol after \"%V\" value "
                              "of \"%V\" parameter in \"%V\" SSI command",
                              ch, &ctx->param->value, &ctx->param->key,
                              &ctx->command);
                state = 139;
                break;
            }

            break;

        case 144:
            switch (ch) {
            case '-':
                state = 143;
                break;

            default:
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "unexpected \"%c\" symbol in \"%V\" SSI command",
                              ch, &ctx->command);
                state = 139;
                break;
            }

            break;

        case 143:
            switch (ch) {
            case '>':
                ctx->state = 129;
                ctx->pos = p + 1;
                ctx->looked = looked;
                ctx->copy_end = copy_end;

                if (ctx->copy_start == ((void*)0) && copy_end) {
                    ctx->copy_start = ctx->buf->pos;
                }

                return NGX_OK;

            default:
                ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                              "unexpected \"%c\" symbol in \"%V\" SSI command",
                              ch, &ctx->command);
                state = 139;
                break;
            }

            break;

        case 139:
            switch (ch) {
            case '-':
                state = 141;
                break;

            default:
                break;
            }

            break;

        case 141:
            switch (ch) {
            case '-':
                state = 140;
                break;

            default:
                state = 139;
                break;
            }

            break;

        case 140:
            switch (ch) {
            case '>':
                ctx->state = 129;
                ctx->pos = p + 1;
                ctx->looked = looked;
                ctx->copy_end = copy_end;

                if (ctx->copy_start == ((void*)0) && copy_end) {
                    ctx->copy_start = ctx->buf->pos;
                }

                return NGX_HTTP_SSI_ERROR;

            default:
                state = 139;
                break;
            }

            break;
        }
    }

    ctx->state = state;
    ctx->pos = p;
    ctx->looked = looked;

    ctx->copy_end = (state == 129) ? p : copy_end;

    if (ctx->copy_start == ((void*)0) && ctx->copy_end) {
        ctx->copy_start = ctx->buf->pos;
    }

    return NGX_AGAIN;
}
