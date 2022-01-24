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
struct TYPE_3__ {int /*<<< orphan*/ * failInfo; } ;
typedef  TYPE_1__ OSSL_CMP_PKISI ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CMP_R_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OSSL_CMP_PKIFAILUREINFO_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(const OSSL_CMP_PKISI *si, int bit_index)
{
    if (!FUNC2(si != NULL && si->failInfo != NULL))
        return -1;
    if (bit_index < 0 || bit_index > OSSL_CMP_PKIFAILUREINFO_MAX) {
        FUNC1(0, CMP_R_INVALID_ARGS);
        return -1;
    }

    return FUNC0(si->failInfo, bit_index);
}