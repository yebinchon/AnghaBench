#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_SIG ;
struct TYPE_5__ {int /*<<< orphan*/ * shkeybag; } ;
struct TYPE_6__ {TYPE_1__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ PKCS12_SAFEBAG ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_pkcs8ShroudedKeyBag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_SAFEBAG_CREATE0_PKCS8 ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PKCS12_SAFEBAG *FUNC3(X509_SIG *p8)
{
    PKCS12_SAFEBAG *bag = FUNC1();

    /* Set up the safe bag */
    if (bag == NULL) {
        FUNC2(PKCS12_F_PKCS12_SAFEBAG_CREATE0_PKCS8, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    bag->type = FUNC0(NID_pkcs8ShroudedKeyBag);
    bag->value.shkeybag = p8;
    return bag;
}