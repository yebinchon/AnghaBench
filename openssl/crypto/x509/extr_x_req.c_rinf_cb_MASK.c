#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  attributes; } ;
typedef  TYPE_1__ X509_REQ_INFO ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int ASN1_OP_NEW_POST ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                   void *exarg)
{
    X509_REQ_INFO *rinf = (X509_REQ_INFO *)*pval;

    if (operation == ASN1_OP_NEW_POST) {
        rinf->attributes = FUNC0();
        if (!rinf->attributes)
            return 0;
    }
    return 1;
}