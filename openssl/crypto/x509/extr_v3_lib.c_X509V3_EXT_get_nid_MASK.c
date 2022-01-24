#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ext_nid; } ;
typedef  TYPE_1__ X509V3_EXT_METHOD ;

/* Variables and functions */
 TYPE_1__** FUNC0 (TYPE_1__ const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STANDARD_EXTENSION_COUNT ; 
 int /*<<< orphan*/  ext_list ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ const* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  standard_exts ; 

const X509V3_EXT_METHOD *FUNC3(int nid)
{
    X509V3_EXT_METHOD tmp;
    const X509V3_EXT_METHOD *t = &tmp, *const *ret;
    int idx;

    if (nid < 0)
        return NULL;
    tmp.ext_nid = nid;
    ret = FUNC0(&t, standard_exts, STANDARD_EXTENSION_COUNT);
    if (ret)
        return *ret;
    if (!ext_list)
        return NULL;
    idx = FUNC1(ext_list, &tmp);
    return FUNC2(ext_list, idx);
}