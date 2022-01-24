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
struct TYPE_3__ {size_t sig_len; int /*<<< orphan*/ * sig; int /*<<< orphan*/  validation_status; } ;
typedef  TYPE_1__ SCT ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_SCT_SET1_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const*,size_t) ; 
 int /*<<< orphan*/  SCT_VALIDATION_STATUS_NOT_SET ; 

int FUNC3(SCT *sct, const unsigned char *sig, size_t sig_len)
{
    FUNC1(sct->sig);
    sct->sig = NULL;
    sct->sig_len = 0;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;

    if (sig != NULL && sig_len > 0) {
        sct->sig = FUNC2(sig, sig_len);
        if (sct->sig == NULL) {
            FUNC0(CT_F_SCT_SET1_SIGNATURE, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        sct->sig_len = sig_len;
    }
    return 1;
}