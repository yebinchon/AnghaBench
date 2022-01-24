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
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(procfile *file) {
    size_t i;
    unsigned int lines = FUNC0(file);
    int id = -1;
    char *name = NULL;
    for (i = 0; i < lines; i++)
    {
        if (FUNC2(file, i) < 2)
            continue;
        name = FUNC1(file, i, 1);
        if (FUNC4(name, "zram") == 0)
        {
            id = FUNC3(FUNC1(file, i, 0));
            if (id == 0)
                return -1;
            return id;
        }
    }
    return -1;
}