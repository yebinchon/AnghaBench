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
struct TYPE_3__ {int /*<<< orphan*/ * policies; } ;
typedef  TYPE_1__ X509_VERIFY_PARAM ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(X509_VERIFY_PARAM *param,
                                  ASN1_OBJECT *policy)
{
    if (param->policies == NULL) {
        param->policies = FUNC0();
        if (param->policies == NULL)
            return 0;
    }
    if (!FUNC1(param->policies, policy))
        return 0;
    return 1;
}