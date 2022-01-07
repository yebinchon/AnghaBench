
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSIONS ;
typedef int X509_EXTENSION ;
struct TYPE_3__ {int * ctx; } ;
typedef TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;
typedef int OSSL_CMP_CTX ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,int const) ;
 int NID_subject_alt_name ;
 int OSSL_CMP_CTX_reqExtensions_have_SAN (int *) ;
 int OSSL_CMP_CTX_set0_reqExtensions (int *,int *) ;
 int RAND_bytes (unsigned char*,int const) ;
 int TEST_false (int) ;
 scalar_t__ TEST_int_eq (int,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int * X509_EXTENSION_create_by_NID (int *,int ,int ,int *) ;
 int X509_EXTENSION_free (int *) ;
 int sk_X509_EXTENSION_free (int *) ;
 int * sk_X509_EXTENSION_new_null () ;
 int * sk_X509_EXTENSION_pop (int *) ;
 int sk_X509_EXTENSION_push (int *,int *) ;

__attribute__((used)) static int execute_CTX_reqExtensions_have_SAN_test(
                                             OSSL_CMP_CTX_TEST_FIXTURE *fixture)
{
    OSSL_CMP_CTX *ctx = fixture->ctx;
    const int len = 16;
    unsigned char str[16 ];
    ASN1_OCTET_STRING *data = ((void*)0);
    X509_EXTENSION *ext = ((void*)0);
    X509_EXTENSIONS *exts = ((void*)0);
    int res = 0;

    if (!TEST_false(OSSL_CMP_CTX_reqExtensions_have_SAN(ctx)))
        return 0;

    if (!TEST_int_eq(1, RAND_bytes(str, len))
            || !TEST_ptr(data = ASN1_OCTET_STRING_new())
            || !TEST_true(ASN1_OCTET_STRING_set(data, str, len)))
        goto err;
    ext = X509_EXTENSION_create_by_NID(((void*)0), NID_subject_alt_name, 0, data);
    if (!TEST_ptr(ext)
            || !TEST_ptr(exts = sk_X509_EXTENSION_new_null())
            || !TEST_true(sk_X509_EXTENSION_push(exts, ext))
            || !TEST_true(OSSL_CMP_CTX_set0_reqExtensions(ctx, exts))) {
        X509_EXTENSION_free(ext);
        sk_X509_EXTENSION_free(exts);
        goto err;
    }
    if (TEST_int_eq(OSSL_CMP_CTX_reqExtensions_have_SAN(ctx), 1)) {
        ext = sk_X509_EXTENSION_pop(exts);
        res = TEST_false(OSSL_CMP_CTX_reqExtensions_have_SAN(ctx));
        X509_EXTENSION_free(ext);
    }
 err:
    ASN1_OCTET_STRING_free(data);
    return res;
}
