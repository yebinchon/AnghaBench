
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char** argv; char* data; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void nn_error_unexpected_argument (struct nn_parse_context *ctx)
{
    fprintf (stderr, "%s: Unexpected argument ``%s''\n",
        ctx->argv[0], ctx->data);
    exit (1);
}
