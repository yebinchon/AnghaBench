
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int BN_bin2bn (unsigned char const*,int,int *) ;
 int bn_free (int **,int const*) ;
 int bn_new (int **,int const*) ;

__attribute__((used)) static int bn_c2i(ASN1_VALUE **pval, const unsigned char *cont, int len,
                  int utype, char *free_cont, const ASN1_ITEM *it)
{
    BIGNUM *bn;

    if (*pval == ((void*)0) && !bn_new(pval, it))
        return 0;
    bn = (BIGNUM *)*pval;
    if (!BN_bin2bn(cont, len, bn)) {
        bn_free(pval, it);
        return 0;
    }
    return 1;
}
