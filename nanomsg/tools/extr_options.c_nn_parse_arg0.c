
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_parse_context {char** argv; char** last_option_usage; struct nn_option* options; } ;
struct nn_option {scalar_t__ arg0name; int longname; } ;


 int assert (int) ;
 int nn_has_arg (struct nn_option*) ;
 int nn_process_option (struct nn_parse_context*,int,int *) ;
 int strcmp (char*,scalar_t__) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void nn_parse_arg0 (struct nn_parse_context *ctx)
{
    int i;
    struct nn_option *opt;
    char *arg0;

    arg0 = strrchr (ctx->argv[0], '/');
    if (arg0 == ((void*)0)) {
        arg0 = ctx->argv[0];
    } else {
        arg0 += 1;
    }


    for (i = 0;; ++i) {
        opt = &ctx->options[i];
        if (!opt->longname)
            return;
        if (opt->arg0name && !strcmp (arg0, opt->arg0name)) {
            assert (!nn_has_arg (opt));
            ctx->last_option_usage[i] = ctx->argv[0];
            nn_process_option (ctx, i, ((void*)0));
        }
    }
}
