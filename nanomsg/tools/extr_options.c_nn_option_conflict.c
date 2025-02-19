
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char** argv; scalar_t__* last_option_usage; struct nn_option* options; } ;
struct nn_option {unsigned long conflicts_mask; unsigned long mask_set; int longname; } ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int nn_print_option (struct nn_parse_context*,int,int ) ;
 int stderr ;

__attribute__((used)) static void nn_option_conflict (struct nn_parse_context *ctx,
                              int opt_index)
{
    unsigned long mask;
    int i;
    int num_conflicts;
    struct nn_option *opt;

    fprintf (stderr, "%s: Option", ctx->argv[0]);
    nn_print_option (ctx, opt_index, stderr);
    fprintf (stderr, "conflicts with the following options:\n");

    mask = ctx->options[opt_index].conflicts_mask;
    num_conflicts = 0;
    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            break;
        if (i == opt_index)
            continue;
        if (ctx->last_option_usage[i] && opt->mask_set & mask) {
            num_conflicts += 1;
            fprintf (stderr, "   ");
            nn_print_option (ctx, i, stderr);
            fprintf (stderr, "\n");
        }
    }
    if (!num_conflicts) {
        fprintf (stderr, "   ");
        nn_print_option (ctx, opt_index, stderr);
        fprintf (stderr, "\n");
    }
    exit (1);
}
