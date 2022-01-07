
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char* data; char** argv; struct nn_option* options; } ;
struct nn_option {char* longname; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static void nn_error_ambiguous_option (struct nn_parse_context *ctx)
{
    struct nn_option *opt;
    char *a, *b;
    char *arg;

    arg = ctx->data+2;
    fprintf (stderr, "%s: Ambiguous option ``%s'':\n", ctx->argv[0], ctx->data);
    for (opt = ctx->options; opt->longname; ++opt) {
        for (a = opt->longname, b = arg; ; ++a, ++b) {
            if (*b == 0 || *b == '=') {
                fprintf (stderr, "    %s\n", opt->longname);
                break;
            } else if (*b != *a) {
                break;
            }
        }
    }
    exit (1);
}
