
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int idp_flags; unsigned int idp_reasons; TYPE_1__* idp; } ;
typedef TYPE_2__ X509_CRL ;
struct TYPE_12__ {int ex_flags; int crldp; } ;
typedef TYPE_3__ X509 ;
struct TYPE_13__ {unsigned int dp_reasons; int distpoint; } ;
struct TYPE_10__ {int distpoint; } ;
typedef TYPE_4__ DIST_POINT ;


 int CRL_SCORE_ISSUER_NAME ;
 int EXFLAG_CA ;
 int IDP_ONLYATTR ;
 int IDP_ONLYCA ;
 int IDP_ONLYUSER ;
 scalar_t__ crldp_check_crlissuer (TYPE_4__*,TYPE_2__*,int) ;
 scalar_t__ idp_check_dp (int ,int ) ;
 int sk_DIST_POINT_num (int ) ;
 TYPE_4__* sk_DIST_POINT_value (int ,int) ;

__attribute__((used)) static int crl_crldp_check(X509 *x, X509_CRL *crl, int crl_score,
                           unsigned int *preasons)
{
    int i;
    if (crl->idp_flags & IDP_ONLYATTR)
        return 0;
    if (x->ex_flags & EXFLAG_CA) {
        if (crl->idp_flags & IDP_ONLYUSER)
            return 0;
    } else {
        if (crl->idp_flags & IDP_ONLYCA)
            return 0;
    }
    *preasons = crl->idp_reasons;
    for (i = 0; i < sk_DIST_POINT_num(x->crldp); i++) {
        DIST_POINT *dp = sk_DIST_POINT_value(x->crldp, i);
        if (crldp_check_crlissuer(dp, crl, crl_score)) {
            if (!crl->idp || idp_check_dp(dp->distpoint, crl->idp->distpoint)) {
                *preasons &= dp->dp_reasons;
                return 1;
            }
        }
    }
    if ((!crl->idp || !crl->idp->distpoint)
        && (crl_score & CRL_SCORE_ISSUER_NAME))
        return 1;
    return 0;
}
