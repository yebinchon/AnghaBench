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
struct subfn {char* fname; int priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subfn*,int,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct subfn **slist, int *nsub)
{
    const char *prev = NULL;
    for (int n = 0; n < *nsub; n++) {
        const char *fname = (*slist)[n].fname;
        if (FUNC1(fname, ".idx")) {
            prev = fname;
        } else if (FUNC1(fname, ".sub")) {
            if (prev && FUNC3(prev, fname, FUNC2(fname) - 4) == 0)
                (*slist)[n].priority = -1;
        }
    }
    for (int n = *nsub - 1; n >= 0; n--) {
        if ((*slist)[n].priority < 0)
            FUNC0(*slist, *nsub, n);
    }
}