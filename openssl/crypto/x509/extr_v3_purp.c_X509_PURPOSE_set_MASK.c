#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  X509V3_F_X509_PURPOSE_SET ; 
 int /*<<< orphan*/  X509V3_R_INVALID_PURPOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

int FUNC2(int *p, int purpose)
{
    if (FUNC1(purpose) == -1) {
        FUNC0(X509V3_F_X509_PURPOSE_SET, X509V3_R_INVALID_PURPOSE);
        return 0;
    }
    *p = purpose;
    return 1;
}