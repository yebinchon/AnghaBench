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
struct TYPE_3__ {int /*<<< orphan*/  dirty_cnt; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int ASN1_OP_D2I_POST ; 
 int ASN1_OP_FREE_PRE ; 
 int ASN1_OP_NEW_PRE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                 void *exarg)
{
    if (operation == ASN1_OP_NEW_PRE) {
        *pval = (ASN1_VALUE *)FUNC1();
        if (*pval != NULL)
            return 2;
        return 0;
    } else if (operation == ASN1_OP_FREE_PRE) {
        FUNC0((DH *)*pval);
        *pval = NULL;
        return 2;
    } else if (operation == ASN1_OP_D2I_POST) {
        ((DH *)*pval)->dirty_cnt++;
    }
    return 1;
}