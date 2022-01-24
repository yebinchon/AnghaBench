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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 

void FUNC4(const char *dir)
{
    char *path = FUNC3(NULL, dir);
    char *cdir = path + 1;

    while (cdir) {
        cdir = FUNC1(cdir, '/');
        if (cdir)
            *cdir = 0;

        FUNC0(path, 0700);

        if (cdir)
            *cdir++ = '/';
    }

    FUNC2(path);
}