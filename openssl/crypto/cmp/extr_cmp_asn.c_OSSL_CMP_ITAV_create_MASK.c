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
typedef  int /*<<< orphan*/  OSSL_CMP_ITAV ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

OSSL_CMP_ITAV *FUNC2(ASN1_OBJECT *type, ASN1_TYPE *value)
{
    OSSL_CMP_ITAV *itav;

    if (type == NULL || (itav = FUNC0()) == NULL)
        return NULL;
    FUNC1(itav, type, value);
    return itav;
}