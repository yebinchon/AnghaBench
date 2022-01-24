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
typedef  int /*<<< orphan*/ * PCCERT_CONTEXT ;
typedef  scalar_t__ HCERTSTORE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  rootW ; 

__attribute__((used)) static BOOL FUNC5(HCERTSTORE store)
{
    BOOL ret = TRUE;

    if (store)
    {
        HCERTSTORE rootStore = FUNC4(0, rootW);
        PCCERT_CONTEXT cert = NULL, check;

        do {
            cert = FUNC2(store, cert);
            if (cert)
            {
                if (!(check = FUNC0(rootStore, cert)))
                    ret = FALSE;
                else
                    FUNC3(check);
            }
        } while (ret && cert);
        if (cert)
            FUNC3(cert);
        FUNC1(rootStore, 0);
    }
    return ret;
}