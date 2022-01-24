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
struct TYPE_2__ {int /*<<< orphan*/ * dh; scalar_t__ pad; int /*<<< orphan*/ * dhpeer; } ;
typedef  TYPE_1__ PROV_DH_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (unsigned char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *vpdhctx, unsigned char *secret, size_t *secretlen,
                     size_t outlen)
{
    PROV_DH_CTX *pdhctx = (PROV_DH_CTX *)vpdhctx;
    int ret;
    size_t dhsize;
    const BIGNUM *pub_key = NULL;

    /* TODO(3.0): Add errors to stack */
    if (pdhctx->dh == NULL || pdhctx->dhpeer == NULL)
        return 0;

    dhsize = (size_t)FUNC3(pdhctx->dh);
    if (secret == NULL) {
        *secretlen = dhsize;
        return 1;
    }
    if (outlen < dhsize)
        return 0;

    FUNC2(pdhctx->dhpeer, &pub_key, NULL);
    ret = (pdhctx->pad) ? FUNC1(secret, pub_key, pdhctx->dh)
                        : FUNC0(secret, pub_key, pdhctx->dh);
    if (ret <= 0)
        return 0;

    *secretlen = ret;
    return 1;
}