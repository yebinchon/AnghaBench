
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_int_eq (int ,int ) ;
 int X509_V_ERR_UNABLE_TO_GET_CRL ;
 int X509_V_FLAG_CRL_CHECK ;
 int test_leaf ;
 int test_root ;
 int verify (int ,int ,int *,int ) ;

__attribute__((used)) static int test_no_crl(void)
{
    return TEST_int_eq(verify(test_leaf, test_root, ((void*)0),
                              X509_V_FLAG_CRL_CHECK),
                       X509_V_ERR_UNABLE_TO_GET_CRL);
}
