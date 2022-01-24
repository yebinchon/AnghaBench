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
struct TYPE_2__ {int /*<<< orphan*/ * sm2_id; } ;
typedef  TYPE_1__ X509_REQ ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  ASN1_OP_D2I_PRE 130 
#define  ASN1_OP_FREE_POST 129 
#define  ASN1_OP_NEW_POST 128 

__attribute__((used)) static int FUNC1(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{
#ifndef OPENSSL_NO_SM2
    X509_REQ *ret = (X509_REQ *)*pval;

    switch (operation) {
    case ASN1_OP_D2I_PRE:
        FUNC0(ret->sm2_id);
        /* fall thru */
    case ASN1_OP_NEW_POST:
        ret->sm2_id = NULL;
        break;

    case ASN1_OP_FREE_POST:
        FUNC0(ret->sm2_id);
        break;
    }
#endif

    return 1;
}