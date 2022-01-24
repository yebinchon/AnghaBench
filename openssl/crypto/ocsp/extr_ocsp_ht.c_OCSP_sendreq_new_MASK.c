#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OCSP_REQ_CTX ;
typedef  int /*<<< orphan*/  OCSP_REQUEST ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

OCSP_REQ_CTX *FUNC4(BIO *io, const char *path, OCSP_REQUEST *req,
                               int maxline)
{

    OCSP_REQ_CTX *rctx = NULL;
    rctx = FUNC2(io, maxline);
    if (rctx == NULL)
        return NULL;

    if (!FUNC1(rctx, "POST", path))
        goto err;

    if (req && !FUNC3(rctx, req))
        goto err;

    return rctx;

 err:
    FUNC0(rctx);
    return NULL;
}