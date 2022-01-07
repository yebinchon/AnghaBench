
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIO ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new_file (char*,char*) ;
 int BIO_printf (int ,char*) ;
 int BIO_puts (int *,char*) ;
 int BIO_snprintf (char*,int,char*,char const*,char const*) ;
 int * BN_to_ASN1_INTEGER (int const*,int *) ;
 int BSIZE ;
 int ERR_print_errors (int ) ;
 int OPENSSL_strlcpy (char*,char const*,int) ;
 int bio_err ;
 int i2a_ASN1_INTEGER (int *,int *) ;
 int strlen (char const*) ;

int save_serial(const char *serialfile, const char *suffix, const BIGNUM *serial,
                ASN1_INTEGER **retai)
{
    char buf[1][BSIZE];
    BIO *out = ((void*)0);
    int ret = 0;
    ASN1_INTEGER *ai = ((void*)0);
    int j;

    if (suffix == ((void*)0))
        j = strlen(serialfile);
    else
        j = strlen(serialfile) + strlen(suffix) + 1;
    if (j >= BSIZE) {
        BIO_printf(bio_err, "file name too long\n");
        goto err;
    }

    if (suffix == ((void*)0))
        OPENSSL_strlcpy(buf[0], serialfile, BSIZE);
    else {

        j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s.%s", serialfile, suffix);



    }
    out = BIO_new_file(buf[0], "w");
    if (out == ((void*)0)) {
        ERR_print_errors(bio_err);
        goto err;
    }

    if ((ai = BN_to_ASN1_INTEGER(serial, ((void*)0))) == ((void*)0)) {
        BIO_printf(bio_err, "error converting serial to ASN.1 format\n");
        goto err;
    }
    i2a_ASN1_INTEGER(out, ai);
    BIO_puts(out, "\n");
    ret = 1;
    if (retai) {
        *retai = ai;
        ai = ((void*)0);
    }
 err:
    BIO_free_all(out);
    ASN1_INTEGER_free(ai);
    return ret;
}
