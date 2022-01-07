
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int EVP_PKEY ;


 int common_verify_sm2 (int *,int *,int,int,int ) ;

__attribute__((used)) static int x509_verify_sm2(X509 *x, EVP_PKEY *pkey, int mdnid, int pknid)
{
    return common_verify_sm2(x, pkey, mdnid, pknid, 0);
}
