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
struct d3dx_object {int size; int /*<<< orphan*/ * data; } ;
struct d3dx9_base_effect {struct d3dx_object* objects; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC9(struct d3dx9_base_effect *base, unsigned int object_id, const char **ptr)
{
    struct d3dx_object *object = &base->objects[object_id];

    if (object->size || object->data)
    {
        if (object_id)
            FUNC1("Overwriting object id %u!\n", object_id);
        else
            FUNC5("Overwriting object id 0.\n");

        FUNC4(FUNC2(), 0, object->data);
        object->data = NULL;
    }

    FUNC8(ptr, &object->size);
    FUNC5("Data size: %#x.\n", object->size);

    if (!object->size)
        return D3D_OK;

    object->data = FUNC3(FUNC2(), 0, object->size);
    if (!object->data)
    {
        FUNC0("Failed to allocate object memory.\n");
        return E_OUTOFMEMORY;
    }

    FUNC5("Data: %s.\n", FUNC6(*ptr, object->size));
    FUNC7(object->data, *ptr, object->size);

    *ptr += ((object->size + 3) & ~3);

    return D3D_OK;
}