#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_8__ {int /*<<< orphan*/  cert; int /*<<< orphan*/  epoch_time_in_ms; int /*<<< orphan*/ * issuer; int /*<<< orphan*/  log_store; } ;
struct TYPE_7__ {scalar_t__ version; scalar_t__ validation_status; int /*<<< orphan*/  log_id_len; int /*<<< orphan*/  log_id; } ;
typedef  int /*<<< orphan*/  SCT_CTX ;
typedef  TYPE_1__ SCT ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ CT_POLICY_EVAL_CTX ;
typedef  int /*<<< orphan*/  CTLOG ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ CT_LOG_ENTRY_TYPE_PRECERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ SCT_VALIDATION_STATUS_INVALID ; 
 scalar_t__ SCT_VALIDATION_STATUS_UNKNOWN_LOG ; 
 scalar_t__ SCT_VALIDATION_STATUS_UNKNOWN_VERSION ; 
 void* SCT_VALIDATION_STATUS_UNVERIFIED ; 
 scalar_t__ SCT_VALIDATION_STATUS_VALID ; 
 scalar_t__ SCT_VERSION_V1 ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(SCT *sct, const CT_POLICY_EVAL_CTX *ctx)
{
    int is_sct_valid = -1;
    SCT_CTX *sctx = NULL;
    X509_PUBKEY *pub = NULL, *log_pkey = NULL;
    const CTLOG *log;

    /*
     * With an unrecognized SCT version we don't know what such an SCT means,
     * let alone validate one.  So we return validation failure (0).
     */
    if (sct->version != SCT_VERSION_V1) {
        sct->validation_status = SCT_VALIDATION_STATUS_UNKNOWN_VERSION;
        return 0;
    }

    log = FUNC0(ctx->log_store,
                                     sct->log_id, sct->log_id_len);

    /* Similarly, an SCT from an unknown log also cannot be validated. */
    if (log == NULL) {
        sct->validation_status = SCT_VALIDATION_STATUS_UNKNOWN_LOG;
        return 0;
    }

    sctx = FUNC3();
    if (sctx == NULL)
        goto err;

    if (FUNC11(&log_pkey, FUNC1(log)) != 1)
        goto err;
    if (FUNC6(sctx, log_pkey) != 1)
        goto err;

    if (FUNC9(sct) == CT_LOG_ENTRY_TYPE_PRECERT) {
        EVP_PKEY *issuer_pkey;

        if (ctx->issuer == NULL) {
            sct->validation_status = SCT_VALIDATION_STATUS_UNVERIFIED;
            goto end;
        }

        issuer_pkey = FUNC12(ctx->issuer);

        if (FUNC11(&pub, issuer_pkey) != 1)
            goto err;
        if (FUNC5(sctx, pub) != 1)
            goto err;
    }

    FUNC7(sctx, ctx->epoch_time_in_ms);

    /*
     * XXX: Potential for optimization.  This repeats some idempotent heavy
     * lifting on the certificate for each candidate SCT, and appears to not
     * use any information in the SCT itself, only the certificate is
     * processed.  So it may make more sense to to do this just once, perhaps
     * associated with the shared (by all SCTs) policy eval ctx.
     *
     * XXX: Failure here is global (SCT independent) and represents either an
     * issue with the certificate (e.g. duplicate extensions) or an out of
     * memory condition.  When the certificate is incompatible with CT, we just
     * mark the SCTs invalid, rather than report a failure to determine the
     * validation status.  That way, callbacks that want to do "soft" SCT
     * processing will not abort handshakes with false positive internal
     * errors.  Since the function does not distinguish between certificate
     * issues (peer's fault) and internal problems (out fault) the safe thing
     * to do is to report a validation failure and let the callback or
     * application decide what to do.
     */
    if (FUNC4(sctx, ctx->cert, NULL) != 1)
        sct->validation_status = SCT_VALIDATION_STATUS_UNVERIFIED;
    else
        sct->validation_status = FUNC8(sctx, sct) == 1 ?
            SCT_VALIDATION_STATUS_VALID : SCT_VALIDATION_STATUS_INVALID;

end:
    is_sct_valid = sct->validation_status == SCT_VALIDATION_STATUS_VALID;
err:
    FUNC10(pub);
    FUNC10(log_pkey);
    FUNC2(sctx);

    return is_sct_valid;
}