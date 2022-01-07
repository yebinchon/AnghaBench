
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ameth; } ;
struct TYPE_6__ {int (* priv_print ) (int *,TYPE_2__ const*,int,int *) ;} ;
typedef TYPE_2__ EVP_PKEY ;
typedef int BIO ;
typedef int ASN1_PCTX ;


 int stub1 (int *,TYPE_2__ const*,int,int *) ;
 int unsup_alg (int *,TYPE_2__ const*,int,char*) ;

int EVP_PKEY_print_private(BIO *out, const EVP_PKEY *pkey,
                           int indent, ASN1_PCTX *pctx)
{
    if (pkey->ameth && pkey->ameth->priv_print)
        return pkey->ameth->priv_print(out, pkey, indent, pctx);

    return unsup_alg(out, pkey, indent, "Private Key");
}
