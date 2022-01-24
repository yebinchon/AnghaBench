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
struct d3dcompiler_shader_reflection_type_member {int offset; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct d3dcompiler_shader_reflection {int dummy; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct d3dcompiler_shader_reflection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC8(struct d3dcompiler_shader_reflection *ref,
        struct d3dcompiler_shader_reflection_type_member *member, const char *data, const char **ptr)
{
    DWORD offset;

    FUNC7(ptr, &offset);
    if (!FUNC4(data + offset, &member->name))
    {
        FUNC0("Failed to copy name.\n");
        return E_OUTOFMEMORY;
    }
    FUNC3("Member name: %s.\n", FUNC5(member->name));

    FUNC7(ptr, &offset);
    FUNC3("Member type offset: %x\n", offset);

    member->type = FUNC6(ref, data, offset);
    if (!member->type)
    {
        FUNC0("Failed to get member type\n");
        FUNC2(FUNC1(), 0, member->name);
        return E_FAIL;
    }

    FUNC7(ptr, &member->offset);
    FUNC3("Member offset %x\n", member->offset);

    return S_OK;
}