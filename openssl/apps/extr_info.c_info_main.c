
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 int BIO_printf (int ,char*,char*) ;
 int OPENSSL_INFO_CONFIG_DIR ;
 int OPENSSL_INFO_CPU_SETTINGS ;
 int OPENSSL_INFO_DIR_FILENAME_SEPARATOR ;
 int OPENSSL_INFO_DSO_EXTENSION ;
 int OPENSSL_INFO_ENGINES_DIR ;
 int OPENSSL_INFO_LIST_SEPARATOR ;
 int OPENSSL_INFO_MODULES_DIR ;
 int OPENSSL_INFO_SEED_SOURCE ;
 char* OPENSSL_info (int) ;





 int OPT_EOF ;




 int bio_err ;
 int bio_out ;
 int info_options ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 scalar_t__ opt_num_rest () ;

int info_main(int argc, char **argv)
{
    int ret = 1, dirty = 0, type = 0;
    char *prog;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, info_options);
    while ((o = opt_next()) != OPT_EOF) {
        switch (o) {
        default:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 131:
            opt_help(info_options);
            ret = 0;
            goto end;
        case 136:
            type = OPENSSL_INFO_CONFIG_DIR;
            dirty++;
            break;
        case 132:
            type = OPENSSL_INFO_ENGINES_DIR;
            dirty++;
            break;
        case 129:
            type = OPENSSL_INFO_MODULES_DIR;
            dirty++;
            break;
        case 133:
            type = OPENSSL_INFO_DSO_EXTENSION;
            dirty++;
            break;
        case 134:
            type = OPENSSL_INFO_DIR_FILENAME_SEPARATOR;
            dirty++;
            break;
        case 130:
            type = OPENSSL_INFO_LIST_SEPARATOR;
            dirty++;
            break;
        case 128:
            type = OPENSSL_INFO_SEED_SOURCE;
            dirty++;
            break;
        case 135:
            type = OPENSSL_INFO_CPU_SETTINGS;
            dirty++;
            break;
        }
    }
    if (opt_num_rest() != 0) {
        BIO_printf(bio_err, "%s: Extra parameters given.\n", prog);
        goto opthelp;
    }
    if (dirty > 1) {
        BIO_printf(bio_err, "%s: Only one item allowed\n", prog);
        goto opthelp;
    }
    if (dirty == 0) {
        BIO_printf(bio_err, "%s: No items chosen\n", prog);
        goto opthelp;
    }

    BIO_printf(bio_out, "%s\n", OPENSSL_info(type));
    ret = 0;
 end:
    return ret;
}
