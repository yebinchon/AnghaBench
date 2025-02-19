
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int columns; int width; } ;
struct TYPE_6__ {scalar_t__ type; int * name; } ;
typedef int HELP_CHOICE ;
typedef scalar_t__ FUNC_TYPE ;
typedef TYPE_1__ FUNCTION ;
typedef TYPE_2__ DISPLAY_COLUMNS ;


 int BIO_printf (int ,char*,...) ;
 scalar_t__ FT_cipher ;
 scalar_t__ FT_md ;
 scalar_t__ FT_none ;



 int bio_err ;
 int calculate_columns (TYPE_1__*,TYPE_2__*) ;
 int do_cmd (int ,int,char**) ;
 TYPE_1__* functions ;
 int help_options ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 char** opt_rest () ;
 int prog_init () ;

int help_main(int argc, char **argv)
{
    FUNCTION *fp;
    int i, nl;
    FUNC_TYPE tp;
    char *prog;
    HELP_CHOICE o;
    DISPLAY_COLUMNS dc;

    prog = opt_init(argc, argv, help_options);
    while ((o = opt_next()) != 130) {
        switch (o) {
        case 129:
        case 130:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            return 1;
        case 128:
            opt_help(help_options);
            return 0;
        }
    }

    if (opt_num_rest() == 1) {
        char *new_argv[3];

        new_argv[0] = opt_rest()[0];
        new_argv[1] = "--help";
        new_argv[2] = ((void*)0);
        return do_cmd(prog_init(), 2, new_argv);
    }
    if (opt_num_rest() != 0) {
        BIO_printf(bio_err, "Usage: %s\n", prog);
        return 1;
    }

    calculate_columns(functions, &dc);
    BIO_printf(bio_err, "Standard commands");
    i = 0;
    tp = FT_none;
    for (fp = functions; fp->name != ((void*)0); fp++) {
        nl = 0;
        if (i++ % dc.columns == 0) {
            BIO_printf(bio_err, "\n");
            nl = 1;
        }
        if (fp->type != tp) {
            tp = fp->type;
            if (!nl)
                BIO_printf(bio_err, "\n");
            if (tp == FT_md) {
                i = 1;
                BIO_printf(bio_err,
                           "\nMessage Digest commands (see the `dgst' command for more details)\n");
            } else if (tp == FT_cipher) {
                i = 1;
                BIO_printf(bio_err,
                           "\nCipher commands (see the `enc' command for more details)\n");
            }
        }
        BIO_printf(bio_err, "%-*s", dc.width, fp->name);
    }
    BIO_printf(bio_err, "\n\n");
    return 0;
}
