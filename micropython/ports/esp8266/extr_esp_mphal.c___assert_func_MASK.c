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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_AssertionError ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char const*,char const*) ; 

void FUNC2(const char *file, int line, const char *func, const char *expr) {
    FUNC1("assert:%s:%d:%s: %s\n", file, line, func, expr);
    FUNC0(&mp_type_AssertionError, "C-level assert");
}