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
struct TYPE_10__ {int number; int /*<<< orphan*/ * name; } ;
struct TYPE_9__ {int max_number; int /*<<< orphan*/  lock; int /*<<< orphan*/  namenum; } ;
typedef  TYPE_1__ OSSL_NAMEMAP ;
typedef  TYPE_2__ NAMENUM_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,size_t) ; 
 TYPE_2__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,char const*,size_t) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(OSSL_NAMEMAP *namemap, int number,
                       const char *name, size_t name_len)
{
    NAMENUM_ENTRY *namenum = NULL;
    int tmp_number;

#ifndef FIPS_MODE
    if (namemap == NULL)
        namemap = FUNC8(NULL);
#endif

    if (name == NULL || name_len == 0 || namemap == NULL)
        return 0;

    if ((tmp_number = FUNC7(namemap, name, name_len)) != 0)
        return tmp_number;       /* Pretend success */

    FUNC1(namemap->lock);

    if ((namenum = FUNC3(sizeof(*namenum))) == NULL
        || (namenum->name = FUNC2(name, name_len)) == NULL)
        goto err;

    namenum->number = tmp_number =
        number != 0 ? number : ++namemap->max_number;
    (void)FUNC5(namemap->namenum, namenum);

    if (FUNC4(namemap->namenum))
        goto err;

    FUNC0(namemap->lock);

    return tmp_number;

 err:
    FUNC6(namenum);

    FUNC0(namemap->lock);
    return 0;
}