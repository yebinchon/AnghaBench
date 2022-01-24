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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_2__ {scalar_t__ crlTime; scalar_t__ crlNum; scalar_t__ crlUrl; } ;
typedef  TYPE_1__ OCSP_CRLID ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC5(const X509V3_EXT_METHOD *method, void *in, BIO *bp,
                          int ind)
{
    OCSP_CRLID *a = in;
    if (a->crlUrl) {
        if (FUNC2(bp, "%*scrlUrl: ", ind, "") <= 0)
            goto err;
        if (!FUNC1(bp, (ASN1_STRING *)a->crlUrl))
            goto err;
        if (FUNC3(bp, "\n", 1) <= 0)
            goto err;
    }
    if (a->crlNum) {
        if (FUNC2(bp, "%*scrlNum: ", ind, "") <= 0)
            goto err;
        if (FUNC4(bp, a->crlNum) <= 0)
            goto err;
        if (FUNC3(bp, "\n", 1) <= 0)
            goto err;
    }
    if (a->crlTime) {
        if (FUNC2(bp, "%*scrlTime: ", ind, "") <= 0)
            goto err;
        if (!FUNC0(bp, a->crlTime))
            goto err;
        if (FUNC3(bp, "\n", 1) <= 0)
            goto err;
    }
    return 1;
 err:
    return 0;
}