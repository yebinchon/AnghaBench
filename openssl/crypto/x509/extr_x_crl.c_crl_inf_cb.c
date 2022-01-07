
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revoked; } ;
typedef TYPE_1__ X509_CRL_INFO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;



 int X509_REVOKED_cmp ;
 int sk_X509_REVOKED_set_cmp_func (int ,int ) ;

__attribute__((used)) static int crl_inf_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                      void *exarg)
{
    X509_CRL_INFO *a = (X509_CRL_INFO *)*pval;

    if (!a || !a->revoked)
        return 1;
    switch (operation) {




    case 128:
        (void)sk_X509_REVOKED_set_cmp_func(a->revoked, X509_REVOKED_cmp);
        break;
    }
    return 1;
}
