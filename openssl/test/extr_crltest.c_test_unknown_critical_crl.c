
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_CRL ;


 int * CRL_from_strings (int ) ;
 scalar_t__ TEST_int_eq (int ,int ) ;
 scalar_t__ TEST_ptr (int *) ;
 int X509_CRL_free (int *) ;
 int X509_V_ERR_UNHANDLED_CRITICAL_CRL_EXTENSION ;
 int X509_V_FLAG_CRL_CHECK ;
 int make_CRL_stack (int *,int *) ;
 int test_leaf ;
 int test_root ;
 int * unknown_critical_crls ;
 int verify (int ,int ,int ,int ) ;

__attribute__((used)) static int test_unknown_critical_crl(int n)
{
    X509_CRL *unknown_critical_crl = CRL_from_strings(unknown_critical_crls[n]);
    int r;

    r = TEST_ptr(unknown_critical_crl)
        && TEST_int_eq(verify(test_leaf, test_root,
                              make_CRL_stack(unknown_critical_crl, ((void*)0)),
                              X509_V_FLAG_CRL_CHECK),
                       X509_V_ERR_UNHANDLED_CRITICAL_CRL_EXTENSION);
    X509_CRL_free(unknown_critical_crl);
    return r;
}
