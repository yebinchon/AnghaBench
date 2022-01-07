
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char** argv; int requires; struct nn_option* options; } ;
struct nn_option {char* longname; int mask_set; int shortname; char* metavar; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ nn_has_arg (struct nn_option*) ;

__attribute__((used)) static void nn_print_usage (struct nn_parse_context *ctx, FILE *stream)
{
    int i;
    int first;
    struct nn_option *opt;

    fprintf (stream, "    %s ", ctx->argv[0]);


    first = 1;
    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (opt->mask_set & ctx->requires) {
            if (first) {
                first = 0;
                fprintf (stream, "{--%s", opt->longname);
            } else {
                fprintf (stream, "|--%s", opt->longname);
            }
        }
    }
    if (!first) {
        fprintf (stream, "} ");
    }


    first = 1;
    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (opt->mask_set & ctx->requires)
            continue;
        if (opt->shortname && !nn_has_arg (opt)) {
            if (first) {
                first = 0;
                fprintf (stream, "[-%c", opt->shortname);
            } else {
                fprintf (stream, "%c", opt->shortname);
            }
        }
    }
    if (!first) {
        fprintf (stream, "] ");
    }


    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (opt->mask_set & ctx->requires)
            continue;
        if (opt->shortname && nn_has_arg (opt) && opt->metavar) {
            fprintf (stream, "[-%c %s] ", opt->shortname, opt->metavar);
        }
    }

    fprintf (stream, "[options] \n");
}
