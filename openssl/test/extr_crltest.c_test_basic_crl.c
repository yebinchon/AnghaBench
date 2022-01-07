
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;


 int * CRL_from_strings (int ) ;
 scalar_t__ TEST_int_eq (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 int X509_CRL_free (int *) ;
 int X509_V_ERR_CERT_REVOKED ;
 int X509_V_FLAG_CRL_CHECK ;
 int X509_V_OK ;
 int kBasicCRL ;
 int kRevokedCRL ;
 int make_CRL_stack (int *,int *) ;
 int test_leaf ;
 int test_root ;
 int verify (int ,int ,int ,int ) ;

__attribute__((used)) static int test_basic_crl(void)
{
    X509_CRL *basic_crl = CRL_from_strings(kBasicCRL);
    X509_CRL *revoked_crl = CRL_from_strings(kRevokedCRL);
    int r;

    r = TEST_ptr(basic_crl)
        && TEST_ptr(revoked_crl)
        && TEST_int_eq(verify(test_leaf, test_root,
                              make_CRL_stack(basic_crl, ((void*)0)),
                              X509_V_FLAG_CRL_CHECK), X509_V_OK)
        && TEST_int_eq(verify(test_leaf, test_root,
                              make_CRL_stack(basic_crl, revoked_crl),
                              X509_V_FLAG_CRL_CHECK), X509_V_ERR_CERT_REVOKED);
    X509_CRL_free(basic_crl);
    X509_CRL_free(revoked_crl);
    return r;
}
