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
struct TYPE_3__ {int /*<<< orphan*/ * reqExtensions; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(OSSL_CMP_CTX *ctx)
{
    if (ctx == NULL) {
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        return -1;
    }
    /* if one of the following conditions 'fail' this is not an error */
    return ctx->reqExtensions != NULL
        && FUNC1(ctx->reqExtensions,
                                 NID_subject_alt_name, -1) >= 0;
}