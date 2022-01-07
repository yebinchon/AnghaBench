
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;
typedef int ASN1_PCTX ;


 int pkey_rsa_print (int *,int const*,int,int) ;

__attribute__((used)) static int rsa_priv_print(BIO *bp, const EVP_PKEY *pkey, int indent,
                          ASN1_PCTX *ctx)
{
    return pkey_rsa_print(bp, pkey, indent, 1);
}
