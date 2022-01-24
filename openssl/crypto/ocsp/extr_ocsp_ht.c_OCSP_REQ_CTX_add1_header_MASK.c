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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  OHS_HTTP_HEADER ; 

int FUNC2(OCSP_REQ_CTX *rctx,
                             const char *name, const char *value)
{
    if (!name)
        return 0;
    if (FUNC0(rctx->mem, name) <= 0)
        return 0;
    if (value) {
        if (FUNC1(rctx->mem, ": ", 2) != 2)
            return 0;
        if (FUNC0(rctx->mem, value) <= 0)
            return 0;
    }
    if (FUNC1(rctx->mem, "\r\n", 2) != 2)
        return 0;
    rctx->state = OHS_HTTP_HEADER;
    return 1;
}