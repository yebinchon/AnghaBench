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
 char* FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static char *FUNC4(const unsigned char *in, size_t len)
{
    char *ret = NULL;

    if (len == 0)
        return NULL;

    /* Assert that the string does not contain NUL-bytes. */
    if (FUNC3(FUNC1((const char*)(in), len), len))
        FUNC2(ret = FUNC0((const char*)(in), len));
    return ret;
}