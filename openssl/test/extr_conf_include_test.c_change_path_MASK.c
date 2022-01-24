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
 int /*<<< orphan*/  DIRSEP ; 
 size_t DIRSEP_PRESERVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *file)
{
    char *s = FUNC1(file);
    char *p = s;
    char *last = NULL;
    int ret;

    if (s == NULL)
        return -1;

    while ((p = FUNC4(p, DIRSEP)) != NULL) {
        last = p++;
    }
    if (last == NULL)
        return 0;
    last[DIRSEP_PRESERVE] = 0;

    FUNC2("changing path to %s", s);
    ret = FUNC3(s);
    FUNC0(s);
    return ret;
}