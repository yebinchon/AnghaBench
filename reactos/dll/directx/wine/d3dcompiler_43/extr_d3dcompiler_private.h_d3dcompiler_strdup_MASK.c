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
typedef  scalar_t__ SIZE_T ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static inline char *FUNC3(const char *string)
{
    char *copy;
    SIZE_T len;

    if (!string)
        return NULL;

    len = FUNC2(string);
    copy = FUNC0(len + 1);
    if (copy)
        FUNC1(copy, string, len + 1);
    return copy;
}