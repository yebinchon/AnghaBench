
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIO ;
typedef int ASN1_VALUE ;


 scalar_t__ ASN1_BIO ;
 int ASN1_COMPARE ;
 int ASN1_DECODE ;
 int ASN1_ENCODE ;
 int ASN1_OK ;
 int * ASN1_item_d2i (int *,unsigned char const**,int,int ) ;
 int ASN1_item_d2i_bio (int ,int *,int *) ;
 int ASN1_item_free (int *,int ) ;
 int ASN1_item_i2d (int *,unsigned char**,int ) ;
 int BIO_free (int *) ;
 int * BIO_new_file (int ,char*) ;
 int BIO_read (int *,unsigned char*,int) ;
 scalar_t__ ERR_GET_REASON (int ) ;
 scalar_t__ ERR_R_MALLOC_FAILURE ;
 int ERR_peek_error () ;
 int OPENSSL_free (unsigned char*) ;
 int TEST_false (int) ;
 scalar_t__ TEST_int_eq (scalar_t__,int ) ;
 int TEST_int_ge (int,int ) ;
 int TEST_ptr (int *) ;
 scalar_t__ TEST_ptr_null (int ) ;
 scalar_t__ expected_error ;
 int item_type ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int test_file ;

__attribute__((used)) static int test_bad_asn1(void)
{
    BIO *bio = ((void*)0);
    ASN1_VALUE *value = ((void*)0);
    int ret = 0;
    unsigned char buf[2048];
    const unsigned char *buf_ptr = buf;
    unsigned char *der = ((void*)0);
    int derlen;
    int len;

    bio = BIO_new_file(test_file, "r");
    if (!TEST_ptr(bio))
        return 0;

    if (expected_error == ASN1_BIO) {
        if (TEST_ptr_null(ASN1_item_d2i_bio(item_type, bio, ((void*)0))))
            ret = 1;
        goto err;
    }






    len = BIO_read(bio, buf, sizeof(buf));
    if (!TEST_int_ge(len, 0))
        goto err;

    value = ASN1_item_d2i(((void*)0), &buf_ptr, len, item_type);
    if (value == ((void*)0)) {
        if (TEST_int_eq(expected_error, ASN1_DECODE))
            ret = 1;
        goto err;
    }

    derlen = ASN1_item_i2d(value, &der, item_type);

    if (der == ((void*)0) || derlen < 0) {
        if (TEST_int_eq(expected_error, ASN1_ENCODE))
            ret = 1;
        goto err;
    }

    if (derlen != len || memcmp(der, buf, derlen) != 0) {
        if (TEST_int_eq(expected_error, ASN1_COMPARE))
            ret = 1;
        goto err;
    }

    if (TEST_int_eq(expected_error, ASN1_OK))
        ret = 1;

 err:

    if (ret == 1
        && !TEST_false(ERR_GET_REASON(ERR_peek_error()) == ERR_R_MALLOC_FAILURE))
        ret = 0;
    BIO_free(bio);
    OPENSSL_free(der);
    ASN1_item_free(value, item_type);
    return ret;
}
