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
 int /*<<< orphan*/  LC_NUMERIC ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static bool FUNC2(void)
{
    char *name = FUNC0(LC_NUMERIC, NULL);
    return !name || FUNC1(name, "C") == 0 || FUNC1(name, "C.UTF-8") == 0;
}