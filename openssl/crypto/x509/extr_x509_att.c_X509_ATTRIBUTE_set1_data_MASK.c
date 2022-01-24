#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  set; int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ X509_ATTRIBUTE ;
struct TYPE_10__ {int type; } ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;
typedef  TYPE_2__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void const*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,void const*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,void const*) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int MBSTRING_FLAG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_F_X509_ATTRIBUTE_SET1_DATA ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(X509_ATTRIBUTE *attr, int attrtype,
                             const void *data, int len)
{
    ASN1_TYPE *ttmp = NULL;
    ASN1_STRING *stmp = NULL;
    int atype = 0;
    if (!attr)
        return 0;
    if (attrtype & MBSTRING_FLAG) {
        stmp = FUNC2(NULL, data, len, attrtype,
                                      FUNC8(attr->object));
        if (!stmp) {
            FUNC9(X509_F_X509_ATTRIBUTE_SET1_DATA, ERR_R_ASN1_LIB);
            return 0;
        }
        atype = stmp->type;
    } else if (len != -1) {
        if ((stmp = FUNC3(attrtype)) == NULL)
            goto err;
        if (!FUNC1(stmp, data, len))
            goto err;
        atype = attrtype;
    }
    /*
     * This is a bit naughty because the attribute should really have at
     * least one value but some types use and zero length SET and require
     * this.
     */
    if (attrtype == 0) {
        FUNC0(stmp);
        return 1;
    }
    if ((ttmp = FUNC5()) == NULL)
        goto err;
    if ((len == -1) && !(attrtype & MBSTRING_FLAG)) {
        if (!FUNC7(ttmp, attrtype, data))
            goto err;
    } else {
        FUNC6(ttmp, atype, stmp);
        stmp = NULL;
    }
    if (!FUNC10(attr->set, ttmp))
        goto err;
    return 1;
 err:
    FUNC9(X509_F_X509_ATTRIBUTE_SET1_DATA, ERR_R_MALLOC_FAILURE);
    FUNC4(ttmp);
    FUNC0(stmp);
    return 0;
}