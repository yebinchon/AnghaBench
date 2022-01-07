
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char** argv; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int nn_print_option (struct nn_parse_context*,int,int ) ;
 int stderr ;

__attribute__((used)) static void nn_option_error (char *message, struct nn_parse_context *ctx,
                     int opt_index)
{
    fprintf (stderr, "%s: Option", ctx->argv[0]);
    nn_print_option (ctx, opt_index, stderr);
    fprintf (stderr, "%s\n", message);
    exit (1);
}
