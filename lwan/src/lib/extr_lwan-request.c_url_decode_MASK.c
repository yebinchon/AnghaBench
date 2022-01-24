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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char) ; 

__attribute__((used)) static ssize_t FUNC2(char *str)
{
    if (FUNC0(!str))
        return -EINVAL;

    char *ch, *decoded;
    for (decoded = ch = str; *ch; ch++) {
        if (*ch == '%') {
            char tmp =
                (char)(FUNC1(ch[1]) << 4 | FUNC1(ch[2]));

            if (FUNC0(!tmp))
                return -EINVAL;

            *decoded++ = tmp;
            ch += 2;
        } else if (*ch == '+') {
            *decoded++ = ' ';
        } else {
            *decoded++ = *ch;
        }
    }

    *decoded = '\0';
    return (ssize_t)(decoded - str);
}