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
 unsigned int ONE_DAY ; 
 unsigned int ONE_HOUR ; 
 unsigned int ONE_MINUTE ; 
 unsigned int ONE_MONTH ; 
 unsigned int ONE_WEEK ; 
 unsigned int ONE_YEAR ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 int FUNC2 (char const*,char*,unsigned int*,char*) ; 

unsigned int FUNC3(const char *str, unsigned int default_value)
{
    unsigned int total = 0;
    unsigned int period;
    char multiplier;

    if (!str)
        return default_value;

    while (*str && FUNC2(str, "%u%c", &period, &multiplier) == 2) {
        switch (multiplier) {
        case 's': total += period; break;
        case 'm': total += period * ONE_MINUTE; break;
        case 'h': total += period * ONE_HOUR; break;
        case 'd': total += period * ONE_DAY; break;
        case 'w': total += period * ONE_WEEK; break;
        case 'M': total += period * ONE_MONTH; break;
        case 'y': total += period * ONE_YEAR; break;
        default:
            FUNC0("Ignoring unknown multiplier: %c",
                        multiplier);
        }

        str = (const char *)FUNC1(str, multiplier) + 1;
    }

    return total ? total : default_value;
}