
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_parse_context {char** argv; TYPE_1__* options; } ;
struct TYPE_2__ {int requires_mask; } ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int nn_print_option (struct nn_parse_context*,int,int ) ;
 int nn_print_requires (struct nn_parse_context*,int ) ;
 int stderr ;

__attribute__((used)) static void nn_option_requires (struct nn_parse_context *ctx, int opt_index) {
    fprintf (stderr, "%s: Option", ctx->argv[0]);
    nn_print_option (ctx, opt_index, stderr);
    fprintf (stderr, "requires at least one of the following options:\n");

    nn_print_requires (ctx, ctx->options[opt_index].requires_mask);
    exit (1);
}
