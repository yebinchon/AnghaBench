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
 int /*<<< orphan*/  ILLEGAL_FILENAME_CHARS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char) ; 
 char* FUNC1 (void*,char const*) ; 

__attribute__((used)) static char *FUNC2(void *talloc_ctx, const char *s)
{
    char *res = FUNC1(talloc_ctx, s);
    char *cur = res;
    while (*cur) {
        if (FUNC0(ILLEGAL_FILENAME_CHARS, *cur) || ((unsigned char)*cur) < 32)
            *cur = '_';
        cur++;
    }
    return res;
}