#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
struct TYPE_14__ {scalar_t__ length; } ;
struct TYPE_13__ {TYPE_5__* hashed_msg; TYPE_1__* hash_algo; } ;
struct TYPE_12__ {TYPE_4__* msg_imprint; } ;
struct TYPE_11__ {int /*<<< orphan*/  mds; TYPE_3__* request; } ;
typedef  TYPE_2__ TS_RESP_CTX ;
typedef  TYPE_3__ TS_REQ ;
typedef  TYPE_4__ TS_MSG_IMPRINT ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_5__ ASN1_OCTET_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_INFO_BAD_ALG ; 
 int /*<<< orphan*/  TS_INFO_BAD_DATA_FORMAT ; 
 int /*<<< orphan*/  TS_INFO_BAD_REQUEST ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 
 scalar_t__ V_ASN1_NULL ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(TS_RESP_CTX *ctx)
{
    TS_REQ *request = ctx->request;
    TS_MSG_IMPRINT *msg_imprint;
    X509_ALGOR *md_alg;
    int md_alg_id;
    const ASN1_OCTET_STRING *digest;
    const EVP_MD *md = NULL;
    int i;

    if (FUNC4(request) != 1) {
        FUNC6(ctx, TS_STATUS_REJECTION,
                                    "Bad request version.");
        FUNC5(ctx, TS_INFO_BAD_REQUEST);
        return 0;
    }

    msg_imprint = request->msg_imprint;
    md_alg = msg_imprint->hash_algo;
    md_alg_id = FUNC3(md_alg->algorithm);
    for (i = 0; !md && i < FUNC7(ctx->mds); ++i) {
        const EVP_MD *current_md = FUNC8(ctx->mds, i);
        if (md_alg_id == FUNC2(current_md))
            md = current_md;
    }
    if (!md) {
        FUNC6(ctx, TS_STATUS_REJECTION,
                                    "Message digest algorithm is "
                                    "not supported.");
        FUNC5(ctx, TS_INFO_BAD_ALG);
        return 0;
    }

    if (md_alg->parameter && FUNC0(md_alg->parameter) != V_ASN1_NULL) {
        FUNC6(ctx, TS_STATUS_REJECTION,
                                    "Superfluous message digest "
                                    "parameter.");
        FUNC5(ctx, TS_INFO_BAD_ALG);
        return 0;
    }
    digest = msg_imprint->hashed_msg;
    if (digest->length != FUNC1(md)) {
        FUNC6(ctx, TS_STATUS_REJECTION,
                                    "Bad message digest.");
        FUNC5(ctx, TS_INFO_BAD_DATA_FORMAT);
        return 0;
    }

    return 1;
}