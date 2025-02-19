
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int error_depth; int current_crl_score; TYPE_1__* param; TYPE_4__* current_issuer; int (* check_issued ) (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;int chain; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_21__ {int idp_flags; int base_crl_number; } ;
typedef TYPE_3__ X509_CRL ;
struct TYPE_22__ {int ex_flags; int ex_kusage; } ;
typedef TYPE_4__ X509 ;
struct TYPE_19__ {int flags; } ;
typedef int EVP_PKEY ;


 int CRL_SCORE_SAME_PATH ;
 int CRL_SCORE_SCOPE ;
 int CRL_SCORE_TIME ;
 int EXFLAG_KUSAGE ;
 int IDP_INVALID ;
 int KU_CRL_SIGN ;
 int X509_CRL_check_suiteb (TYPE_3__*,int *,int ) ;
 scalar_t__ X509_CRL_verify (TYPE_3__*,int *) ;
 int X509_V_ERR_CRL_PATH_VALIDATION_ERROR ;
 int X509_V_ERR_CRL_SIGNATURE_FAILURE ;
 int X509_V_ERR_DIFFERENT_CRL_SCOPE ;
 int X509_V_ERR_INVALID_EXTENSION ;
 int X509_V_ERR_KEYUSAGE_NO_CRL_SIGN ;
 int X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY ;
 int X509_V_ERR_UNABLE_TO_GET_CRL_ISSUER ;
 int X509_V_OK ;
 int * X509_get0_pubkey (TYPE_4__*) ;
 scalar_t__ check_crl_path (TYPE_2__*,TYPE_4__*) ;
 int check_crl_time (TYPE_2__*,TYPE_3__*,int) ;
 int sk_X509_num (int ) ;
 TYPE_4__* sk_X509_value (int ,int) ;
 int stub1 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;
 int verify_cb_crl (TYPE_2__*,int) ;

__attribute__((used)) static int check_crl(X509_STORE_CTX *ctx, X509_CRL *crl)
{
    X509 *issuer = ((void*)0);
    EVP_PKEY *ikey = ((void*)0);
    int cnum = ctx->error_depth;
    int chnum = sk_X509_num(ctx->chain) - 1;


    if (ctx->current_issuer)
        issuer = ctx->current_issuer;




    else if (cnum < chnum)
        issuer = sk_X509_value(ctx->chain, cnum + 1);
    else {
        issuer = sk_X509_value(ctx->chain, chnum);

        if (!ctx->check_issued(ctx, issuer, issuer) &&
            !verify_cb_crl(ctx, X509_V_ERR_UNABLE_TO_GET_CRL_ISSUER))
            return 0;
    }

    if (issuer == ((void*)0))
        return 1;




    if (!crl->base_crl_number) {

        if ((issuer->ex_flags & EXFLAG_KUSAGE) &&
            !(issuer->ex_kusage & KU_CRL_SIGN) &&
            !verify_cb_crl(ctx, X509_V_ERR_KEYUSAGE_NO_CRL_SIGN))
            return 0;

        if (!(ctx->current_crl_score & CRL_SCORE_SCOPE) &&
            !verify_cb_crl(ctx, X509_V_ERR_DIFFERENT_CRL_SCOPE))
            return 0;

        if (!(ctx->current_crl_score & CRL_SCORE_SAME_PATH) &&
            check_crl_path(ctx, ctx->current_issuer) <= 0 &&
            !verify_cb_crl(ctx, X509_V_ERR_CRL_PATH_VALIDATION_ERROR))
            return 0;

        if ((crl->idp_flags & IDP_INVALID) &&
            !verify_cb_crl(ctx, X509_V_ERR_INVALID_EXTENSION))
            return 0;
    }

    if (!(ctx->current_crl_score & CRL_SCORE_TIME) &&
        !check_crl_time(ctx, crl, 1))
        return 0;


    ikey = X509_get0_pubkey(issuer);

    if (!ikey &&
        !verify_cb_crl(ctx, X509_V_ERR_UNABLE_TO_DECODE_ISSUER_PUBLIC_KEY))
        return 0;

    if (ikey) {
        int rv = X509_CRL_check_suiteb(crl, ikey, ctx->param->flags);

        if (rv != X509_V_OK && !verify_cb_crl(ctx, rv))
            return 0;

        if (X509_CRL_verify(crl, ikey) <= 0 &&
            !verify_cb_crl(ctx, X509_V_ERR_CRL_SIGNATURE_FAILURE))
            return 0;
    }
    return 1;
}
