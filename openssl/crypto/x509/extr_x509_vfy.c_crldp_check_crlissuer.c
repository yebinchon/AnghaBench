
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_NAME ;
typedef int X509_CRL ;
struct TYPE_8__ {int CRLissuer; } ;
struct TYPE_6__ {int directoryName; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;
typedef TYPE_3__ DIST_POINT ;


 int CRL_SCORE_ISSUER_NAME ;
 scalar_t__ GEN_DIRNAME ;
 int * X509_CRL_get_issuer (int *) ;
 int X509_NAME_cmp (int ,int *) ;
 int sk_GENERAL_NAME_num (int ) ;
 TYPE_2__* sk_GENERAL_NAME_value (int ,int) ;

__attribute__((used)) static int crldp_check_crlissuer(DIST_POINT *dp, X509_CRL *crl, int crl_score)
{
    int i;
    X509_NAME *nm = X509_CRL_get_issuer(crl);

    if (!dp->CRLissuer)
        return ! !(crl_score & CRL_SCORE_ISSUER_NAME);
    for (i = 0; i < sk_GENERAL_NAME_num(dp->CRLissuer); i++) {
        GENERAL_NAME *gen = sk_GENERAL_NAME_value(dp->CRLissuer, i);
        if (gen->type != GEN_DIRNAME)
            continue;
        if (!X509_NAME_cmp(gen->d.directoryName, nm))
            return 1;
    }
    return 0;
}
