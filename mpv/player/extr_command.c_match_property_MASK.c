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
 int FUNC0 (int,int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static bool FUNC4(const char *a, const char *b)
{
    if (FUNC2(a, "*") == 0)
        return true;
    // Give options and properties the same ID each, so change notifications
    // work both way.
    if (FUNC3(a, "options/", 8) == 0)
        a += 8;
    if (FUNC3(b, "options/", 8) == 0)
        b += 8;
    int len_a = FUNC1(a);
    int len_b = FUNC1(b);
    return FUNC3(a, b, FUNC0(len_a, len_b)) == 0;
}