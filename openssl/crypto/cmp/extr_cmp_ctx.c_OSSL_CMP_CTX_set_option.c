
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
 int OCSP_REVOKED_STATUS_AACOMPROMISE ;
 int OCSP_REVOKED_STATUS_NOSTATUS ;
 int OSSL_CMP_LOG_DEBUG ;
 int OSSL_CRMF_POPO_KEYAGREE ;
 int OSSL_CRMF_POPO_NONE ;

int OSSL_CMP_CTX_set_option(OSSL_CMP_CTX *ctx, int opt, int val) {
    int min_val;

    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    switch (opt) {
    case 134:
        min_val = OCSP_REVOKED_STATUS_NOSTATUS;
        break;
    case 135:
        min_val = OSSL_CRMF_POPO_NONE;
        break;
    default:
        min_val = 0;
        break;
    }
    if (val < min_val) {
        CMPerr(0, CMP_R_INVALID_ARGS);
        return 0;
    }

    switch (opt) {
    case 141:
        if (val > OSSL_CMP_LOG_DEBUG) {
            CMPerr(0, CMP_R_INVALID_ARGS);
            return 0;
        }
        ctx->log_verbosity = val;
        break;
    case 142:
        ctx->implicitConfirm = val;
        break;
    case 144:
        ctx->disableConfirm = val;
        break;
    case 129:
        ctx->unprotectedSend = val;
        break;
    case 130:
        ctx->unprotectedErrors = val;
        break;
    case 128:
        ctx->days = val;
        break;
    case 132:
        ctx->SubjectAltName_nodefault = val;
        break;
    case 133:
        ctx->setSubjectAltNameCritical = val;
        break;
    case 136:
        ctx->setPoliciesCritical = val;
        break;
    case 143:
        ctx->ignore_keyusage = val;
        break;
    case 135:
        if (val > OSSL_CRMF_POPO_KEYAGREE) {
            CMPerr(0, CMP_R_INVALID_ARGS);
            return 0;
        }
        ctx->popoMethod = val;
        break;
    case 145:
        ctx->digest = val;
        break;
    case 138:
        ctx->pbm_owf = val;
        break;
    case 140:
        ctx->pbm_mac = val;
        break;
    case 139:
        ctx->msgtimeout = val;
        break;
    case 131:
        ctx->totaltimeout = val;
        break;
    case 137:
        ctx->permitTAInExtraCertsForIR = val;
        break;
    case 134:
        if (val > OCSP_REVOKED_STATUS_AACOMPROMISE) {
            CMPerr(0, CMP_R_INVALID_ARGS);
            return 0;
        }
        ctx->revocationReason = val;
        break;
    default:
        CMPerr(0, CMP_R_INVALID_ARGS);
        return 0;
    }

    return 1;
}
