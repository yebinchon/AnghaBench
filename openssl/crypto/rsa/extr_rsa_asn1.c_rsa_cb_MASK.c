#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ version; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int ASN1_OP_D2I_POST ; 
 int ASN1_OP_FREE_PRE ; 
 int ASN1_OP_NEW_PRE ; 
 scalar_t__ RSA_ASN1_VERSION_MULTI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{
    if (operation == ASN1_OP_NEW_PRE) {
        *pval = (ASN1_VALUE *)FUNC1();
        if (*pval != NULL)
            return 2;
        return 0;
    } else if (operation == ASN1_OP_FREE_PRE) {
        FUNC0((RSA *)*pval);
        *pval = NULL;
        return 2;
    } else if (operation == ASN1_OP_D2I_POST) {
        if (((RSA *)*pval)->version != RSA_ASN1_VERSION_MULTI) {
            /* not a multi-prime key, skip */
            return 1;
        }
        return (FUNC2((RSA *)*pval) == 1) ? 2 : 0;
    }
    return 1;
}