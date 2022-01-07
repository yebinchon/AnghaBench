
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_cmp (int *,int *) ;
 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,int) ;
 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int * PEM_read_bio_X509 (int *,int *,int ,int *) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_ptr (int *) ;
 int X509_free (int *) ;
 int * X509_get0_sm2_id (int *) ;
 int X509_set0_sm2_id (int *,int *) ;
 int bad_f ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int test_sm2_id(void)
{

    X509 *x = ((void*)0);
    BIO *bio = ((void*)0);
    int ret = 0;
    ASN1_OCTET_STRING *v = ((void*)0), *v2 = ((void*)0);
    char *sm2id = "this is an ID";

    bio = BIO_new_file(bad_f, "r");
    if (bio == ((void*)0))
        goto err;

    x = PEM_read_bio_X509(bio, ((void*)0), 0, ((void*)0));
    if (x == ((void*)0))
        goto err;

    v = ASN1_OCTET_STRING_new();
    if (v == ((void*)0))
        goto err;

    if (!ASN1_OCTET_STRING_set(v, (unsigned char *)sm2id, (int)strlen(sm2id))) {
        ASN1_OCTET_STRING_free(v);
        goto err;
    }

    X509_set0_sm2_id(x, v);

    v2 = X509_get0_sm2_id(x);
    if (!TEST_ptr(v2)
            || !TEST_int_eq(ASN1_OCTET_STRING_cmp(v, v2), 0))
        goto err;

    ret = 1;
 err:
    X509_free(x);
    BIO_free(bio);
    return ret;
}
