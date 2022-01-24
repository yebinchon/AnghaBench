#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct d3dcompiler_shader_reflection_type_member {int dummy; } ;
struct TYPE_3__ {int Class; int Type; int Rows; int Columns; int Elements; int Members; int /*<<< orphan*/  Name; } ;
struct d3dcompiler_shader_reflection_type {struct d3dcompiler_shader_reflection_type_member* members; int /*<<< orphan*/  name; TYPE_2__* reflection; TYPE_1__ desc; } ;
struct TYPE_4__ {int target; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_1__ D3D11_SHADER_TYPE_DESC ;

/* Variables and functions */
 int D3DCOMPILER_SHADER_TARGET_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct d3dcompiler_shader_reflection_type_member* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dcompiler_shader_reflection_type_member*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct d3dcompiler_shader_reflection_type_member*,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct d3dcompiler_shader_reflection_type_member*) ; 
 int /*<<< orphan*/  FUNC12 (struct d3dcompiler_shader_reflection_type_member*) ; 
 int /*<<< orphan*/  FUNC13 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC14 (char const**,int) ; 

__attribute__((used)) static HRESULT FUNC15(struct d3dcompiler_shader_reflection_type *type, const char *data, DWORD offset)
{
    const char *ptr = data + offset;
    DWORD temp;
    D3D11_SHADER_TYPE_DESC *desc;
    unsigned int i;
    struct d3dcompiler_shader_reflection_type_member *members = NULL;
    HRESULT hr;
    DWORD member_offset;

    desc = &type->desc;

    FUNC13(&ptr, &temp);
    desc->Class = temp & 0xffff;
    desc->Type = temp >> 16;
    FUNC5("Class %s, Type %s\n", FUNC8(desc->Class),
            FUNC9(desc->Type));

    FUNC13(&ptr, &temp);
    desc->Rows = temp & 0xffff;
    desc->Columns = temp >> 16;
    FUNC5("Rows %u, Columns %u\n", desc->Rows, desc->Columns);

    FUNC13(&ptr, &temp);
    desc->Elements = temp & 0xffff;
    desc->Members = temp >> 16;
    FUNC5("Elements %u, Members %u\n", desc->Elements, desc->Members);

    FUNC13(&ptr, &member_offset);
    FUNC5("Member Offset %u\n", member_offset);

    if ((type->reflection->target & D3DCOMPILER_SHADER_TARGET_VERSION_MASK) >= 0x500)
        FUNC14(&ptr, 4);

    if (desc->Members)
    {
        const char *ptr2 = data + member_offset;

        members = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*members) * desc->Members);
        if (!members)
        {
            FUNC0("Failed to allocate type memory.\n");
            return E_OUTOFMEMORY;
        }

        for (i = 0; i < desc->Members; ++i)
        {
            hr = FUNC7(type->reflection, &members[i], data, &ptr2);
            if (hr != S_OK)
            {
                FUNC1("Failed to parse type members.\n");
                goto err_out;
            }
        }
    }

    if ((type->reflection->target & D3DCOMPILER_SHADER_TARGET_VERSION_MASK) >= 0x500)
    {
        FUNC13(&ptr, &offset);
        if (!FUNC6(data + offset, &type->name))
        {
            FUNC0("Failed to copy name.\n");
            FUNC12(members);
            return E_OUTOFMEMORY;
        }
        desc->Name = type->name;
        FUNC5("Type name: %s.\n", FUNC10(type->name));
    }

    type->members = members;

    return S_OK;

err_out:
    for (i = 0; i < desc->Members; ++i)
    {
        FUNC11(&members[i]);
    }
    FUNC4(FUNC2(), 0, members);
    return hr;
}