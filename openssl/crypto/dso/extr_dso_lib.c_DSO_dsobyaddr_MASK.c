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
typedef  int /*<<< orphan*/  DSO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 

DSO *FUNC4(void *addr, int flags)
{
    DSO *ret = NULL;
    char *filename = NULL;
    int len = FUNC1(addr, NULL, 0);

    if (len < 0)
        return NULL;

    filename = FUNC3(len);
    if (filename != NULL
            && FUNC1(addr, filename, len) == len)
        ret = FUNC0(NULL, filename, NULL, flags);

    FUNC2(filename);
    return ret;
}