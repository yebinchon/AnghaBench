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
struct d3dcompiler_shader_reflection {unsigned int constant_buffer_count; int /*<<< orphan*/ * creator; int /*<<< orphan*/ * resource_string; int /*<<< orphan*/ * bound_resources; int /*<<< orphan*/ * constant_buffers; int /*<<< orphan*/  types; int /*<<< orphan*/ * pcsg; int /*<<< orphan*/ * osgn; int /*<<< orphan*/ * isgn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct d3dcompiler_shader_reflection*) ; 
 int /*<<< orphan*/  d3dcompiler_shader_reflection_type_destroy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct d3dcompiler_shader_reflection *ref)
{
    FUNC2("Cleanup %p\n", ref);

    if (ref->isgn)
    {
        FUNC4(ref->isgn);
        FUNC1(FUNC0(), 0, ref->isgn);
    }

    if (ref->osgn)
    {
        FUNC4(ref->osgn);
        FUNC1(FUNC0(), 0, ref->osgn);
    }

    if (ref->pcsg)
    {
        FUNC4(ref->pcsg);
        FUNC1(FUNC0(), 0, ref->pcsg);
    }

    if (ref->constant_buffers)
    {
        unsigned int i;

        for (i = 0; i < ref->constant_buffer_count; ++i)
        {
            FUNC3(&ref->constant_buffers[i]);
        }
    }

    FUNC5(&ref->types, d3dcompiler_shader_reflection_type_destroy, NULL);
    FUNC1(FUNC0(), 0, ref->constant_buffers);
    FUNC1(FUNC0(), 0, ref->bound_resources);
    FUNC1(FUNC0(), 0, ref->resource_string);
    FUNC1(FUNC0(), 0, ref->creator);
}