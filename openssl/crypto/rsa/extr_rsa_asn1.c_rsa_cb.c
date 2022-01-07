
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ version; } ;
typedef TYPE_1__ RSA ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_D2I_POST ;
 int ASN1_OP_FREE_PRE ;
 int ASN1_OP_NEW_PRE ;
 scalar_t__ RSA_ASN1_VERSION_MULTI ;
 int RSA_free (TYPE_1__*) ;
 scalar_t__ RSA_new () ;
 int rsa_multip_calc_product (TYPE_1__*) ;

__attribute__((used)) static int rsa_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{
    if (operation == ASN1_OP_NEW_PRE) {
        *pval = (ASN1_VALUE *)RSA_new();
        if (*pval != ((void*)0))
            return 2;
        return 0;
    } else if (operation == ASN1_OP_FREE_PRE) {
        RSA_free((RSA *)*pval);
        *pval = ((void*)0);
        return 2;
    } else if (operation == ASN1_OP_D2I_POST) {
        if (((RSA *)*pval)->version != RSA_ASN1_VERSION_MULTI) {

            return 1;
        }
        return (rsa_multip_calc_product((RSA *)*pval) == 1) ? 2 : 0;
    }
    return 1;
}
