
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIO ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int * ASN1_INTEGER_to_BN (int *,int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,char const*) ;
 int BN_add_word (int *,int) ;
 int BN_free (int *) ;
 int * BN_to_ASN1_INTEGER (int *,int *) ;
 int ERR_clear_error () ;
 int a2i_ASN1_INTEGER (int *,int *,char*,int) ;
 int bio_err ;

__attribute__((used)) static ASN1_INTEGER *next_serial(const char *serialfile)
{
    int ret = 0;
    BIO *in = ((void*)0);
    ASN1_INTEGER *serial = ((void*)0);
    BIGNUM *bn = ((void*)0);

    if ((serial = ASN1_INTEGER_new()) == ((void*)0))
        goto err;

    if ((in = BIO_new_file(serialfile, "r")) == ((void*)0)) {
        ERR_clear_error();
        BIO_printf(bio_err, "Warning: could not open file %s for "
                   "reading, using serial number: 1\n", serialfile);
        if (!ASN1_INTEGER_set(serial, 1))
            goto err;
    } else {
        char buf[1024];
        if (!a2i_ASN1_INTEGER(in, serial, buf, sizeof(buf))) {
            BIO_printf(bio_err, "unable to load number from %s\n",
                       serialfile);
            goto err;
        }
        if ((bn = ASN1_INTEGER_to_BN(serial, ((void*)0))) == ((void*)0))
            goto err;
        ASN1_INTEGER_free(serial);
        serial = ((void*)0);
        if (!BN_add_word(bn, 1))
            goto err;
        if ((serial = BN_to_ASN1_INTEGER(bn, ((void*)0))) == ((void*)0))
            goto err;
    }
    ret = 1;

 err:
    if (!ret) {
        ASN1_INTEGER_free(serial);
        serial = ((void*)0);
    }
    BIO_free_all(in);
    BN_free(bn);
    return serial;
}
