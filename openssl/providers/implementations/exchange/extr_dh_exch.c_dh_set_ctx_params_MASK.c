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
struct TYPE_2__ {int pad; } ;
typedef  TYPE_1__ PROV_DH_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_EXCHANGE_PARAM_PAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *vpdhctx, const OSSL_PARAM params[])
{
    PROV_DH_CTX *pdhctx = (PROV_DH_CTX *)vpdhctx;
    const OSSL_PARAM *p;
    unsigned int pad;

    if (pdhctx == NULL || params == NULL)
        return 0;

    p = FUNC1(params, OSSL_EXCHANGE_PARAM_PAD);
    if (p == NULL || !FUNC0(p, &pad))
        return 0;
    pdhctx->pad = pad ? 1 : 0;
    return 1;
}