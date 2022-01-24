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

/* Variables and functions */
 int NPY_NOTYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int*,int) ; 

__attribute__((used)) static int
FUNC2(int **p_types, int insert)
{
    int n = 0;
    int *newtypes;
    int *types = *p_types;

    while (types[n] != NPY_NOTYPE) {
        n++;
    }
    newtypes = (int *)FUNC1(types, (n + 2)*sizeof(int));
    if (newtypes == NULL) {
        FUNC0();
        return -1;
    }
    newtypes[n] = insert;
    newtypes[n + 1] = NPY_NOTYPE;

    /* Replace the passed-in pointer */
    *p_types = newtypes;
    return 0;
}