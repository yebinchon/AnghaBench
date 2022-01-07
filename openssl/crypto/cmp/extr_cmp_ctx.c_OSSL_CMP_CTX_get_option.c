
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_verbosity; int implicitConfirm; int disableConfirm; int unprotectedSend; int unprotectedErrors; int days; int SubjectAltName_nodefault; int setSubjectAltNameCritical; int setPoliciesCritical; int ignore_keyusage; int popoMethod; int digest; int pbm_owf; int pbm_mac; int msgtimeout; int totaltimeout; int permitTAInExtraCertsForIR; int revocationReason; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CMP_R_INVALID_ARGS ;
 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
int OSSL_CMP_CTX_get_option(const OSSL_CMP_CTX *ctx, int opt) {
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return -1;
    }

    switch (opt) {
    case 141:
        return ctx->log_verbosity;
    case 142:
        return ctx->implicitConfirm;
    case 144:
        return ctx->disableConfirm;
    case 129:
        return ctx->unprotectedSend;
    case 130:
        return ctx->unprotectedErrors;
    case 128:
        return ctx->days;
    case 132:
        return ctx->SubjectAltName_nodefault;
    case 133:
        return ctx->setSubjectAltNameCritical;
    case 136:
        return ctx->setPoliciesCritical;
    case 143:
        return ctx->ignore_keyusage;
    case 135:
        return ctx->popoMethod;
    case 145:
        return ctx->digest;
    case 138:
        return ctx->pbm_owf;
    case 140:
        return ctx->pbm_mac;
    case 139:
        return ctx->msgtimeout;
    case 131:
        return ctx->totaltimeout;
    case 137:
        return ctx->permitTAInExtraCertsForIR;
    case 134:
        return ctx->revocationReason;
    default:
        CMPerr(0, CMP_R_INVALID_ARGS);
        return -1;
    }
}
