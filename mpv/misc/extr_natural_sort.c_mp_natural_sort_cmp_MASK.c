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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 

int FUNC2(const char *name1, const char *name2)
{
    while (name1[0] && name2[0]) {
        if (FUNC0(name1[0]) && FUNC0(name2[0])) {
            while (name1[0] == '0')
                name1++;
            while (name2[0] == '0')
                name2++;
            const char *end1 = name1, *end2 = name2;
            while (FUNC0(*end1))
                end1++;
            while (FUNC0(*end2))
                end2++;
            // With padding stripped, a number with more digits is bigger.
            if ((end1 - name1) < (end2 - name2))
                return -1;
            if ((end1 - name1) > (end2 - name2))
                return 1;
            // Same length, lexicographical works.
            while (name1 < end1) {
                if (name1[0] < name2[0])
                    return -1;
                if (name1[0] > name2[0])
                    return 1;
                name1++;
                name2++;
            }
        } else {
            if (FUNC1(name1[0]) < FUNC1(name2[0]))
                return -1;
            if (FUNC1(name1[0]) > FUNC1(name2[0]))
                return 1;
            name1++;
            name2++;
        }
    }
    if (name2[0])
        return -1;
    if (name1[0])
        return 1;
    return 0;
}