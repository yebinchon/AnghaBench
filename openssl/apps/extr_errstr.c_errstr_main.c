
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int OPTION_CHOICE ;


 int BIO_printf (int ,char*,char*) ;
 int ERR_error_string_n (unsigned long,char*,int) ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_init_ssl (int,int *) ;



 int bio_err ;
 int bio_out ;
 int errstr_options ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 char** opt_rest () ;
 scalar_t__ sscanf (char*,char*,unsigned long*) ;

int errstr_main(int argc, char **argv)
{
    OPTION_CHOICE o;
    char buf[256], *prog;
    int ret = 1;
    unsigned long l;

    prog = opt_init(argc, argv, errstr_options);
    while ((o = opt_next()) != 130) {
        switch (o) {
        case 130:
        case 129:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 128:
            opt_help(errstr_options);
            ret = 0;
            goto end;
        }
    }

    ret = 0;
    for (argv = opt_rest(); *argv; argv++) {
        if (sscanf(*argv, "%lx", &l) == 0) {
            ret++;
        } else {



            OPENSSL_init_ssl(OPENSSL_INIT_LOAD_SSL_STRINGS
                             | OPENSSL_INIT_LOAD_CRYPTO_STRINGS, ((void*)0));
            ERR_error_string_n(l, buf, sizeof(buf));
            BIO_printf(bio_out, "%s\n", buf);
        }
    }
 end:
    return ret;
}
