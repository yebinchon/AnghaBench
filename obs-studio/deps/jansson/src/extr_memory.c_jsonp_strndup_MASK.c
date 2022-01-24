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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

char *FUNC2(const char *str, size_t len)
{
    char *new_str;

    new_str = FUNC0(len + 1);
    if(!new_str)
        return NULL;

    FUNC1(new_str, str, len);
    new_str[len] = '\0';
    return new_str;
}