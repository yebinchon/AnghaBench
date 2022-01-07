
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_new () ;
 int * ASN1_INTEGER_to_BN (int *,int *) ;
 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,...) ;
 int * BN_new () ;
 int ERR_clear_error () ;
 int a2i_ASN1_INTEGER (int *,int *,char*,int) ;
 int bio_err ;
 int perror (char const*) ;
 int rand_serial (int *,int *) ;

BIGNUM *load_serial(const char *serialfile, int create, ASN1_INTEGER **retai)
{
    BIO *in = ((void*)0);
    BIGNUM *ret = ((void*)0);
    char buf[1024];
    ASN1_INTEGER *ai = ((void*)0);

    ai = ASN1_INTEGER_new();
    if (ai == ((void*)0))
        goto err;

    in = BIO_new_file(serialfile, "r");
    if (in == ((void*)0)) {
        if (!create) {
            perror(serialfile);
            goto err;
        }
        ERR_clear_error();
        ret = BN_new();
        if (ret == ((void*)0) || !rand_serial(ret, ai))
            BIO_printf(bio_err, "Out of memory\n");
    } else {
        if (!a2i_ASN1_INTEGER(in, ai, buf, 1024)) {
            BIO_printf(bio_err, "unable to load number from %s\n",
                       serialfile);
            goto err;
        }
        ret = ASN1_INTEGER_to_BN(ai, ((void*)0));
        if (ret == ((void*)0)) {
            BIO_printf(bio_err,
                       "error converting number from bin to BIGNUM\n");
            goto err;
        }
    }

    if (ret && retai) {
        *retai = ai;
        ai = ((void*)0);
    }
 err:
    BIO_free(in);
    ASN1_INTEGER_free(ai);
    return ret;
}
