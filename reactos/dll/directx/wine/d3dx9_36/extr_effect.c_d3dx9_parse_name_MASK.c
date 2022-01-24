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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(char **name, const char *ptr)
{
    DWORD size;

    FUNC6(&ptr, &size);
    FUNC3("Name size: %#x\n", size);

    if (!size)
    {
        return D3D_OK;
    }

    *name = FUNC2(FUNC1(), 0, size);
    if (!*name)
    {
        FUNC0("Failed to allocate name memory.\n");
        return E_OUTOFMEMORY;
    }

    FUNC3("Name: %s.\n", FUNC4(ptr, size));
    FUNC5(*name, ptr, size);

    return D3D_OK;
}