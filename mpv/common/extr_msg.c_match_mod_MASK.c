#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 TYPE_1__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static bool FUNC3(const char *name, const char *mod)
{
    if (!FUNC2(mod, "all"))
        return true;
    // Path prefix matches
    bstr b = FUNC0(name);
    return FUNC1(&b, mod) && (FUNC1(&b, "/") || !b.len);
}