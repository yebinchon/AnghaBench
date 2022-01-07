
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int BIGNUM ;
typedef int ASN1_VALUE ;
typedef int ASN1_PCTX ;
typedef int ASN1_ITEM ;


 scalar_t__ BIO_puts (int *,char*) ;
 int BN_print (int *,int *) ;

__attribute__((used)) static int bn_print(BIO *out, const ASN1_VALUE **pval, const ASN1_ITEM *it,
                    int indent, const ASN1_PCTX *pctx)
{
    if (!BN_print(out, *(BIGNUM **)pval))
        return 0;
    if (BIO_puts(out, "\n") <= 0)
        return 0;
    return 1;
}
