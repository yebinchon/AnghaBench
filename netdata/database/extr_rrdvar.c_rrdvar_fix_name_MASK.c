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
 int /*<<< orphan*/  FUNC0 (char) ; 

inline int FUNC1(char *variable) {
    int fixed = 0;
    while(*variable) {
        if (!FUNC0(*variable) && *variable != '.' && *variable != '_') {
            *variable++ = '_';
            fixed++;
        }
        else
            variable++;
    }

    return fixed;
}