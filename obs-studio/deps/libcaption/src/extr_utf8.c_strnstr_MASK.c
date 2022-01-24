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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

char* FUNC2(const char* string1, const char* string2, size_t len)
{
    size_t length2;

    length2 = FUNC1(string2);
    if (!length2) {
        return (char*)string1;
    }

    while (len >= length2) {
        len--;
        if (!FUNC0(string1, string2, length2))
            return (char*)string1;
        string1++;
    }
    return NULL;
}