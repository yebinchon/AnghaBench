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
struct TYPE_3__ {unsigned int version; } ;
typedef  int /*<<< orphan*/  LZ4F_errorCode_t ;
typedef  TYPE_1__ LZ4F_dctx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  LZ4F_ERROR_allocation_failed ; 
 int /*<<< orphan*/  LZ4F_OK_NoError ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

LZ4F_errorCode_t FUNC2(LZ4F_dctx** LZ4F_decompressionContextPtr, unsigned versionNumber)
{
    LZ4F_dctx* const dctx = (LZ4F_dctx*)FUNC0(sizeof(LZ4F_dctx));
    if (dctx == NULL) {  /* failed allocation */
        *LZ4F_decompressionContextPtr = NULL;
        return FUNC1(LZ4F_ERROR_allocation_failed);
    }

    dctx->version = versionNumber;
    *LZ4F_decompressionContextPtr = dctx;
    return LZ4F_OK_NoError;
}