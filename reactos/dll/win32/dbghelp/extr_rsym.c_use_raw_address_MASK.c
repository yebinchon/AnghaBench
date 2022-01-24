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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char* name)
{
    if (!name)
        return 0;

    if (!FUNC0(name, "__ImageBase"))
        return 1;

    if (!FUNC0(name, "__RUNTIME_PSEUDO_RELOC_LIST__"))
        return 1;

    return 0;
}