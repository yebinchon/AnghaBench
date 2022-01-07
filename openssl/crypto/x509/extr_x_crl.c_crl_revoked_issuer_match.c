
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int issuer; } ;
typedef TYPE_2__ X509_REVOKED ;
typedef int X509_NAME ;
typedef int X509_CRL ;
struct TYPE_6__ {int * directoryName; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_3__ GENERAL_NAME ;


 scalar_t__ GEN_DIRNAME ;
 int * X509_CRL_get_issuer (int *) ;
 int X509_NAME_cmp (int *,int *) ;
 int sk_GENERAL_NAME_num (int ) ;
 TYPE_3__* sk_GENERAL_NAME_value (int ,int) ;

__attribute__((used)) static int crl_revoked_issuer_match(X509_CRL *crl, X509_NAME *nm,
                                    X509_REVOKED *rev)
{
    int i;

    if (!rev->issuer) {
        if (!nm)
            return 1;
        if (!X509_NAME_cmp(nm, X509_CRL_get_issuer(crl)))
            return 1;
        return 0;
    }

    if (!nm)
        nm = X509_CRL_get_issuer(crl);

    for (i = 0; i < sk_GENERAL_NAME_num(rev->issuer); i++) {
        GENERAL_NAME *gen = sk_GENERAL_NAME_value(rev->issuer, i);
        if (gen->type != GEN_DIRNAME)
            continue;
        if (!X509_NAME_cmp(nm, gen->d.directoryName))
            return 1;
    }
    return 0;

}
