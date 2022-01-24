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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ DSA_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_F_DSA_METH_SET1_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

int FUNC3(DSA_METHOD *dsam, const char *name)
{
    char *tmpname = FUNC2(name);

    if (tmpname == NULL) {
        FUNC0(DSA_F_DSA_METH_SET1_NAME, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    FUNC1(dsam->name);
    dsam->name = tmpname;

    return 1;
}