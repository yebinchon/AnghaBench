#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int iobuflen; int /*<<< orphan*/ * mem; int /*<<< orphan*/ * iobuf; int /*<<< orphan*/ * io; int /*<<< orphan*/  max_resp_len; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ OCSP_REQ_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int OCSP_MAX_LINE_LEN ; 
 int /*<<< orphan*/  OCSP_MAX_RESP_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  OHS_ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int) ; 

OCSP_REQ_CTX *FUNC5(BIO *io, int maxline)
{
    OCSP_REQ_CTX *rctx = FUNC4(sizeof(*rctx));

    if (rctx == NULL)
        return NULL;
    rctx->state = OHS_ERROR;
    rctx->max_resp_len = OCSP_MAX_RESP_LENGTH;
    rctx->mem = FUNC0(FUNC1());
    rctx->io = io;
    if (maxline > 0)
        rctx->iobuflen = maxline;
    else
        rctx->iobuflen = OCSP_MAX_LINE_LEN;
    rctx->iobuf = FUNC3(rctx->iobuflen);
    if (rctx->iobuf == NULL || rctx->mem == NULL) {
        FUNC2(rctx);
        return NULL;
    }
    return rctx;
}