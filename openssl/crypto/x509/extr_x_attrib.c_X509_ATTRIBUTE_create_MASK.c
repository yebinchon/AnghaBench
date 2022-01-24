#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  set; int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ X509_ATTRIBUTE ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

X509_ATTRIBUTE *FUNC7(int nid, int atrtype, void *value)
{
    X509_ATTRIBUTE *ret = NULL;
    ASN1_TYPE *val = NULL;

    if ((ret = FUNC5()) == NULL)
        return NULL;
    ret->object = FUNC3(nid);
    if ((val = FUNC1()) == NULL)
        goto err;
    if (!FUNC6(ret->set, val))
        goto err;

    FUNC2(val, atrtype, value);
    return ret;
 err:
    FUNC4(ret);
    FUNC0(val);
    return NULL;
}