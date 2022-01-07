
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 char* BF_options () ;
 int BIO_printf (int ,char*,...) ;
 char* BN_options () ;
 char* DES_options () ;
 char* IDEA_options () ;
 char* MD2_options () ;
 int OPENSSL_BUILT_ON ;
 int OPENSSL_CFLAGS ;
 int OPENSSL_CPU_INFO ;
 int OPENSSL_DIR ;
 int OPENSSL_ENGINES_DIR ;
 int OPENSSL_INFO_SEED_SOURCE ;
 int OPENSSL_MODULES_DIR ;
 int OPENSSL_PLATFORM ;
 int OPENSSL_VERSION ;
 char* OPENSSL_VERSION_TEXT ;
 char* OPENSSL_info (int ) ;
 char* OpenSSL_version (int ) ;
 char* RC4_options () ;
 int bio_err ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 scalar_t__ opt_num_rest () ;
 int printf (char*,...) ;
 int version_options ;

int version_main(int argc, char **argv)
{
    int ret = 1, dirty = 0, seed = 0;
    int cflags = 0, version = 0, date = 0, options = 0, platform = 0, dir = 0;
    int engdir = 0, moddir = 0, cpuinfo = 0;
    char *prog;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, version_options);
    while ((o = opt_next()) != 136) {
        switch (o) {
        case 136:
        case 135:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 133:
            opt_help(version_options);
            ret = 0;
            goto end;
        case 140:
            dirty = date = 1;
            break;
        case 138:
            dirty = dir = 1;
            break;
        case 137:
            dirty = engdir = 1;
            break;
        case 132:
            dirty = moddir = 1;
            break;
        case 134:
            dirty = cflags = 1;
            break;
        case 131:
            dirty = options = 1;
            break;
        case 130:
            dirty = platform = 1;
            break;
        case 129:
            dirty = seed = 1;
            break;
        case 128:
            dirty = version = 1;
            break;
        case 139:
            dirty = cpuinfo = 1;
            break;
        case 141:
            seed = options = cflags = version = date = platform
                = dir = engdir = moddir = cpuinfo
                = 1;
            break;
        }
    }
    if (opt_num_rest() != 0) {
        BIO_printf(bio_err, "Extra parameters given.\n");
        goto opthelp;
    }
    if (!dirty)
        version = 1;

    if (version)
        printf("%s (Library: %s)\n",
               OPENSSL_VERSION_TEXT, OpenSSL_version(OPENSSL_VERSION));
    if (date)
        printf("%s\n", OpenSSL_version(OPENSSL_BUILT_ON));
    if (platform)
        printf("%s\n", OpenSSL_version(OPENSSL_PLATFORM));
    if (options) {
        printf("options: ");
        printf(" %s", BN_options());

        printf(" %s", MD2_options());


        printf(" %s", RC4_options());


        printf(" %s", DES_options());


        printf(" %s", IDEA_options());


        printf(" %s", BF_options());

        printf("\n");
    }
    if (cflags)
        printf("%s\n", OpenSSL_version(OPENSSL_CFLAGS));
    if (dir)
        printf("%s\n", OpenSSL_version(OPENSSL_DIR));
    if (engdir)
        printf("%s\n", OpenSSL_version(OPENSSL_ENGINES_DIR));
    if (moddir)
        printf("%s\n", OpenSSL_version(OPENSSL_MODULES_DIR));
    if (seed) {
        const char *src = OPENSSL_info(OPENSSL_INFO_SEED_SOURCE);
        printf("Seeding source: %s\n", src ? src : "N/A");
    }
    if (cpuinfo)
        printf("%s\n", OpenSSL_version(OPENSSL_CPU_INFO));
    ret = 0;
 end:
    return ret;
}
