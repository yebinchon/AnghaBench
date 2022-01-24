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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static bool FUNC2(const char *s)
{
    if (s[0] == '%')
        return true;
    for (int i = 0; s[i]; i++) {
        unsigned char c = s[i];
        if (!FUNC0(c) || FUNC1(c) || c == '#' || c == '\'' || c == '"')
            return true;
    }
    return false;
}