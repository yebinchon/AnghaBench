
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;
typedef int BIGNUM ;


 int BIO_printf (int ,char*,...) ;
 char* BN_bn2dec (int *) ;
 char* BN_bn2hex (int *) ;
 scalar_t__ BN_check_prime (int *,int *,int *) ;
 int BN_dec2bn (int **,char*) ;
 int BN_free (int *) ;
 int BN_generate_prime_ex (int *,int,int,int *,int *,int *) ;
 int BN_hex2bn (int **,char*) ;
 int * BN_new () ;
 int BN_print (int ,int *) ;
 int OPENSSL_free (char*) ;
 int atoi (int ) ;
 int bio_err ;
 int bio_out ;
 int opt_arg () ;
 int opt_help (int ) ;
 char* opt_init (int,char**,int ) ;
 int opt_next () ;
 int opt_num_rest () ;
 char** opt_rest () ;
 int prime_options ;

int prime_main(int argc, char **argv)
{
    BIGNUM *bn = ((void*)0);
    int hex = 0, generate = 0, bits = 0, safe = 0, ret = 1;
    char *prog;
    OPTION_CHOICE o;

    prog = opt_init(argc, argv, prime_options);
    while ((o = opt_next()) != 133) {
        switch (o) {
        case 133:
        case 132:
opthelp:
            BIO_printf(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case 130:
            opt_help(prime_options);
            ret = 0;
            goto end;
        case 129:
            hex = 1;
            break;
        case 131:
            generate = 1;
            break;
        case 135:
            bits = atoi(opt_arg());
            break;
        case 128:
            safe = 1;
            break;
        case 134:

            opt_arg();
            break;
        }
    }
    argc = opt_num_rest();
    argv = opt_rest();

    if (generate) {
        if (argc != 0) {
            BIO_printf(bio_err, "Extra arguments given.\n");
            goto opthelp;
        }
    } else if (argc == 0) {
        BIO_printf(bio_err, "%s: No prime specified\n", prog);
        goto opthelp;
    }

    if (generate) {
        char *s;

        if (!bits) {
            BIO_printf(bio_err, "Specify the number of bits.\n");
            goto end;
        }
        bn = BN_new();
        if (bn == ((void*)0)) {
            BIO_printf(bio_err, "Out of memory.\n");
            goto end;
        }
        if (!BN_generate_prime_ex(bn, bits, safe, ((void*)0), ((void*)0), ((void*)0))) {
            BIO_printf(bio_err, "Failed to generate prime.\n");
            goto end;
        }
        s = hex ? BN_bn2hex(bn) : BN_bn2dec(bn);
        if (s == ((void*)0)) {
            BIO_printf(bio_err, "Out of memory.\n");
            goto end;
        }
        BIO_printf(bio_out, "%s\n", s);
        OPENSSL_free(s);
    } else {
        for ( ; *argv; argv++) {
            int r;

            if (hex)
                r = BN_hex2bn(&bn, argv[0]);
            else
                r = BN_dec2bn(&bn, argv[0]);

            if (!r) {
                BIO_printf(bio_err, "Failed to process value (%s)\n", argv[0]);
                goto end;
            }

            BN_print(bio_out, bn);
            BIO_printf(bio_out, " (%s) %s prime\n",
                       argv[0],
                       BN_check_prime(bn, ((void*)0), ((void*)0))
                           ? "is" : "is not");
        }
    }

    ret = 0;
 end:
    BN_free(bn);
    return ret;
}
