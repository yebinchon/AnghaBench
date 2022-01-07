
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {scalar_t__* data; scalar_t__** last_option_usage; struct nn_option* options; } ;
struct nn_option {scalar_t__ shortname; int longname; } ;


 int nn_error_unknown_short_option (struct nn_parse_context*) ;
 scalar_t__ nn_get_arg (struct nn_parse_context*) ;
 scalar_t__ nn_has_arg (struct nn_option*) ;
 int nn_option_error (char*,struct nn_parse_context*,int) ;
 int nn_process_option (struct nn_parse_context*,int,scalar_t__*) ;

__attribute__((used)) static void nn_parse_short_option (struct nn_parse_context *ctx)
{
    int i;
    struct nn_option *opt;

    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (!opt->shortname)
            continue;
        if (opt->shortname == *ctx->data) {
            ctx->last_option_usage[i] = ctx->data;
            if (nn_has_arg (opt)) {
                if (ctx->data[1]) {
                    nn_process_option (ctx, i, ctx->data+1);
                } else {
                    if (nn_get_arg (ctx)) {
                        nn_process_option (ctx, i, ctx->data);
                    } else {
                        nn_option_error ("requires an argument", ctx, i);
                    }
                }
                ctx->data = "";
            } else {
                nn_process_option (ctx, i, ((void*)0));
                ctx->data += 1;
            }
            return;
        }
    }
    nn_error_unknown_short_option (ctx);
}
