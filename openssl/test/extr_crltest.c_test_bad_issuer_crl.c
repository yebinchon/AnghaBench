
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;


 int * CRL_from_strings (int ) ;
 scalar_t__ TEST_int_eq (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 int X509_CRL_free (int *) ;
 int X509_V_ERR_UNABLE_TO_GET_CRL ;
 int X509_V_FLAG_CRL_CHECK ;
 int kBadIssuerCRL ;
 int make_CRL_stack (int *,int *) ;
 int test_leaf ;
 int test_root ;
 int verify (int ,int ,int ,int ) ;

__attribute__((used)) static int test_bad_issuer_crl(void)
{
    X509_CRL *bad_issuer_crl = CRL_from_strings(kBadIssuerCRL);
    int r;

    r = TEST_ptr(bad_issuer_crl)
        && TEST_int_eq(verify(test_leaf, test_root,
                              make_CRL_stack(bad_issuer_crl, ((void*)0)),
                              X509_V_FLAG_CRL_CHECK),
                       X509_V_ERR_UNABLE_TO_GET_CRL);
    X509_CRL_free(bad_issuer_crl);
    return r;
}
