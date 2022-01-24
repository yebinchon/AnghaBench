#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  state; int /*<<< orphan*/  mem; } ;
typedef  TYPE_1__ OCSP_REQ_CTX ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  OHS_ASN1_WRITE_INIT ; 

int FUNC3(OCSP_REQ_CTX *rctx, const ASN1_ITEM *it, ASN1_VALUE *val)
{
    static const char req_hdr[] =
        "Content-Type: application/ocsp-request\r\n"
        "Content-Length: %d\r\n\r\n";
    int reqlen = FUNC0(val, NULL, it);
    if (FUNC2(rctx->mem, req_hdr, reqlen) <= 0)
        return 0;
    if (FUNC1(it, rctx->mem, val) <= 0)
        return 0;
    rctx->state = OHS_ASN1_WRITE_INIT;
    return 1;
}