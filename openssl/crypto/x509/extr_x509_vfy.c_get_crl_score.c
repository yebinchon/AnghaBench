
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_14__ {int idp_flags; unsigned int idp_reasons; int flags; scalar_t__ base_crl_number; } ;
typedef TYPE_3__ X509_CRL ;
typedef int X509 ;
struct TYPE_12__ {int flags; } ;


 int CRL_SCORE_AKID ;
 int CRL_SCORE_ISSUER_NAME ;
 int CRL_SCORE_NOCRITICAL ;
 int CRL_SCORE_SCOPE ;
 int CRL_SCORE_TIME ;
 int EXFLAG_CRITICAL ;
 int IDP_INDIRECT ;
 int IDP_INVALID ;
 int IDP_REASONS ;
 int X509_CRL_get_issuer (TYPE_3__*) ;
 scalar_t__ X509_NAME_cmp (int ,int ) ;
 int X509_V_FLAG_EXTENDED_CRL_SUPPORT ;
 int X509_get_issuer_name (int *) ;
 scalar_t__ check_crl_time (TYPE_2__*,TYPE_3__*,int ) ;
 int crl_akid_check (TYPE_2__*,TYPE_3__*,int **,int*) ;
 scalar_t__ crl_crldp_check (int *,TYPE_3__*,int,unsigned int*) ;

__attribute__((used)) static int get_crl_score(X509_STORE_CTX *ctx, X509 **pissuer,
                         unsigned int *preasons, X509_CRL *crl, X509 *x)
{

    int crl_score = 0;
    unsigned int tmp_reasons = *preasons, crl_reasons;




    if (crl->idp_flags & IDP_INVALID)
        return 0;

    if (!(ctx->param->flags & X509_V_FLAG_EXTENDED_CRL_SUPPORT)) {
        if (crl->idp_flags & (IDP_INDIRECT | IDP_REASONS))
            return 0;
    } else if (crl->idp_flags & IDP_REASONS) {

        if (!(crl->idp_reasons & ~tmp_reasons))
            return 0;
    }

    else if (crl->base_crl_number)
        return 0;

    if (X509_NAME_cmp(X509_get_issuer_name(x), X509_CRL_get_issuer(crl))) {
        if (!(crl->idp_flags & IDP_INDIRECT))
            return 0;
    } else
        crl_score |= CRL_SCORE_ISSUER_NAME;

    if (!(crl->flags & EXFLAG_CRITICAL))
        crl_score |= CRL_SCORE_NOCRITICAL;


    if (check_crl_time(ctx, crl, 0))
        crl_score |= CRL_SCORE_TIME;


    crl_akid_check(ctx, crl, pissuer, &crl_score);



    if (!(crl_score & CRL_SCORE_AKID))
        return 0;



    if (crl_crldp_check(x, crl, crl_score, &crl_reasons)) {

        if (!(crl_reasons & ~tmp_reasons))
            return 0;
        tmp_reasons |= crl_reasons;
        crl_score |= CRL_SCORE_SCOPE;
    }

    *preasons = tmp_reasons;

    return crl_score;

}
