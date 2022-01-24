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
 int FUNC0 (char) ; 
 scalar_t__ FUNC1 (int) ; 

char FUNC2(char *s) {
    if(FUNC1(s[1] && s[2]))
        return FUNC0(s[1]) << 4 | FUNC0(s[2]);
    return 0;
}