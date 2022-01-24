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
 int nk_false ; 
 int nk_true ; 
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *string, const char *ext)
{
    const char *start, *where, *term;
    where = FUNC0(ext, ' ');
    if (where || *ext == '\0')
        return nk_false;

    for (start = string;;) {
        where = FUNC2((const char*)start, ext);
        if (!where) break;
        term = where + FUNC1(ext);
        if (where == start || *(where - 1) == ' ') {
            if (*term == ' ' || *term == '\0')
                return nk_true;
        }
        start = term;
    }
    return nk_false;
}