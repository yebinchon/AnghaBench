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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static BOOL FUNC5(const char *ptr, char **name)
{
    size_t name_len;

    if (!ptr) return TRUE;

    name_len = FUNC4(ptr) + 1;
    if (name_len == 1)
    {
        return TRUE;
    }

    *name = FUNC2(FUNC1(), 0, name_len);
    if (!*name)
    {
        FUNC0("Failed to allocate name memory.\n");
        return FALSE;
    }

    FUNC3(*name, ptr, name_len);

    return TRUE;
}