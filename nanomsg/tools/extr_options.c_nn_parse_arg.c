
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char* data; } ;


 int nn_error_unexpected_argument (struct nn_parse_context*) ;
 int nn_parse_long_option (struct nn_parse_context*) ;
 int nn_parse_short_option (struct nn_parse_context*) ;

__attribute__((used)) static void nn_parse_arg (struct nn_parse_context *ctx)
{
    if (ctx->data[0] == '-') {
        if (ctx->data[1] == '-') {
            if (ctx->data[2] == 0) {
                return;
            }
            nn_parse_long_option (ctx);
        } else {
            ctx->data += 1;
            while (*ctx->data) {
                nn_parse_short_option (ctx);
            }
        }
    } else {
        nn_error_unexpected_argument (ctx);
    }
}
