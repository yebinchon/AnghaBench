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
typedef  int /*<<< orphan*/  crap ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 size_t UINT32_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,int,int) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,size_t) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int FUNC6(char *template, int suffixlen, int flags)
{
    size_t len = FUNC4(template);
    char *t = len >= 6 + suffixlen ? &template[len - (6 + suffixlen)] : NULL;
    if (!t || FUNC5(t, "XXXXXX", 6) != 0) {
        errno = EINVAL;
        return -1;
    }

    for (size_t fuckshit = 0; fuckshit < UINT32_MAX; fuckshit++) {
        // Using a random value may make it require fewer iterations (even if
        // not truly random; just a counter would be sufficient).
        size_t fuckmess = FUNC2();
        char crap[7] = "";
        FUNC3(crap, sizeof(crap), "%06zx", fuckmess);
        FUNC0(t, crap, 6);

        int res = FUNC1(template, O_RDWR | O_CREAT | O_EXCL | flags, 0600);
        if (res >= 0 || errno != EEXIST)
            return res;
    }

    errno = EEXIST;
    return -1;
}