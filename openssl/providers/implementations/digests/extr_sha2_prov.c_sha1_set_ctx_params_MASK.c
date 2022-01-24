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
struct TYPE_5__ {scalar_t__ data_type; int /*<<< orphan*/  data; int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_CTRL_SSL3_MASTER_SECRET ; 
 int /*<<< orphan*/  OSSL_DIGEST_PARAM_SSL3_MS ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_1__* FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    SHA_CTX *ctx = (SHA_CTX *)vctx;

    if (ctx != NULL && params != NULL) {
        p = FUNC0(params, OSSL_DIGEST_PARAM_SSL3_MS);
        if (p != NULL && p->data_type == OSSL_PARAM_OCTET_STRING)
            return FUNC1(ctx, EVP_CTRL_SSL3_MASTER_SECRET, p->data_size,
                             p->data);
    }
    return 0;
}