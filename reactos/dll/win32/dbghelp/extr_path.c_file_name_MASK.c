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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static inline const char* FUNC2(const char* str)
{
    const char*       p;

    for (p = str + FUNC1(str) - 1; p >= str && !FUNC0(*p); p--);
    return p + 1;
}