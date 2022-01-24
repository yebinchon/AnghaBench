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
 int INT_MAX ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(char **langs, char *lang)
{
    for (int idx = 0; langs && langs[idx]; idx++) {
        if (lang && FUNC0(langs[idx], lang) == 0)
            return INT_MAX - idx;
    }
    return 0;
}