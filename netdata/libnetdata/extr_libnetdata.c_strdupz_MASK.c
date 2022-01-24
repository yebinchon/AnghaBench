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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int) ; 

char *FUNC3(const char *s) {
    char *t = FUNC1(s);
    if (FUNC2(!t)) FUNC0("Cannot strdup() string '%s'", s);
    return t;
}