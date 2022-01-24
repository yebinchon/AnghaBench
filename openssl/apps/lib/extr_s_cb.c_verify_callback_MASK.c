#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_2__ {int depth; int error; int /*<<< orphan*/  quiet; int /*<<< orphan*/  return_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int X509_V_ERR_CERT_CHAIN_TOO_LONG ; 
#define  X509_V_ERR_CERT_HAS_EXPIRED 133 
#define  X509_V_ERR_CERT_NOT_YET_VALID 132 
#define  X509_V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD 131 
#define  X509_V_ERR_ERROR_IN_CERT_NOT_BEFORE_FIELD 130 
#define  X509_V_ERR_NO_EXPLICIT_POLICY 129 
#define  X509_V_ERR_UNABLE_TO_GET_ISSUER_CERT 128 
 int X509_V_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__ verify_args ; 

int FUNC14(int ok, X509_STORE_CTX *ctx)
{
    X509 *err_cert;
    int err, depth;

    err_cert = FUNC4(ctx);
    err = FUNC5(ctx);
    depth = FUNC6(ctx);

    if (!verify_args.quiet || !ok) {
        FUNC1(bio_err, "depth=%d ", depth);
        if (err_cert != NULL) {
            FUNC3(bio_err,
                               FUNC10(err_cert),
                               0, FUNC12());
            FUNC2(bio_err, "\n");
        } else {
            FUNC2(bio_err, "<no cert>\n");
        }
    }
    if (!ok) {
        FUNC1(bio_err, "verify error:num=%d:%s\n", err,
                   FUNC11(err));
        if (verify_args.depth < 0 || verify_args.depth >= depth) {
            if (!verify_args.return_error)
                ok = 1;
            verify_args.error = err;
        } else {
            ok = 0;
            verify_args.error = X509_V_ERR_CERT_CHAIN_TOO_LONG;
        }
    }
    switch (err) {
    case X509_V_ERR_UNABLE_TO_GET_ISSUER_CERT:
        FUNC2(bio_err, "issuer= ");
        FUNC3(bio_err, FUNC9(err_cert),
                           0, FUNC12());
        FUNC2(bio_err, "\n");
        break;
    case X509_V_ERR_CERT_NOT_YET_VALID:
    case X509_V_ERR_ERROR_IN_CERT_NOT_BEFORE_FIELD:
        FUNC1(bio_err, "notBefore=");
        FUNC0(bio_err, FUNC8(err_cert));
        FUNC1(bio_err, "\n");
        break;
    case X509_V_ERR_CERT_HAS_EXPIRED:
    case X509_V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD:
        FUNC1(bio_err, "notAfter=");
        FUNC0(bio_err, FUNC7(err_cert));
        FUNC1(bio_err, "\n");
        break;
    case X509_V_ERR_NO_EXPLICIT_POLICY:
        if (!verify_args.quiet)
            FUNC13(ctx);
        break;
    }
    if (err == X509_V_OK && ok == 2 && !verify_args.quiet)
        FUNC13(ctx);
    if (ok && !verify_args.quiet)
        FUNC1(bio_err, "verify return:%d\n", ok);
    return ok;
}