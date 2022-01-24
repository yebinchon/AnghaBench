#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* lpVtbl; } ;
struct d3dx9_file_data {int ref; unsigned int nb_children; TYPE_1__ ID3DXFileData_iface; TYPE_1__** children; int /*<<< orphan*/  dxfile_data; int /*<<< orphan*/  reference; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* Release ) (TYPE_1__*) ;} ;
typedef  int /*<<< orphan*/  IDirectXFileObject ;
typedef  int /*<<< orphan*/  IDirectXFileDataReference ;
typedef  TYPE_1__ ID3DXFileData ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DXFILEERR_NOMOREOBJECTS ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct d3dx9_file_data*) ; 
 TYPE_1__** FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDirectXFileData ; 
 int /*<<< orphan*/  IID_IDirectXFileDataReference ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__ d3dx9_file_data_vtbl ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC13(IDirectXFileObject *dxfile_object, ID3DXFileData **ret_iface)
{
    struct d3dx9_file_data *object;
    IDirectXFileObject *data_object;
    unsigned int children_array_size = 0;
    HRESULT ret;

    FUNC11("dxfile_object %p, ret_iface %p.\n", *dxfile_object, ret_iface);

    *ret_iface = NULL;

    object = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*object));
    if (!object)
        return E_OUTOFMEMORY;

    object->ID3DXFileData_iface.lpVtbl = &d3dx9_file_data_vtbl;
    object->ref = 1;

    ret = FUNC8(dxfile_object, &IID_IDirectXFileData, (void **)&object->dxfile_data);
    if (FUNC0(ret))
    {
        IDirectXFileDataReference *reference;

        ret = FUNC8(dxfile_object, &IID_IDirectXFileDataReference, (void **)&reference);
        if (FUNC10(ret))
        {
            ret = FUNC6(reference, &object->dxfile_data);
            FUNC9(reference);
            if (FUNC0(ret))
            {
                FUNC4(FUNC2(), 0, object);
                return E_FAIL;
            }
            object->reference = TRUE;
        }
        else
        {
            FUNC1("Don't know what to do with binary object\n");
            FUNC4(FUNC2(), 0, object);
            return E_FAIL;
        }
    }

    while (FUNC10(ret = FUNC7(object->dxfile_data, &data_object)))
    {
        if (object->nb_children >= children_array_size)
        {
            ID3DXFileData **new_children;

            if (object->children)
            {
                children_array_size *= 2;
                new_children = FUNC5(FUNC2(), 0, object->children,
                        sizeof(*object->children) * children_array_size);
            }
            else
            {
                children_array_size = 4;
                new_children = FUNC3(FUNC2(), 0, sizeof(*object->children) * children_array_size);
            }
            if (!new_children)
            {
                ret = E_OUTOFMEMORY;
                break;
            }
            object->children = new_children;
        }
        ret = FUNC13(data_object, &object->children[object->nb_children]);
        FUNC9(data_object);
        if (FUNC0(ret))
            break;
        object->nb_children++;
    }
    if (ret != DXFILEERR_NOMOREOBJECTS)
    {
        (&object->ID3DXFileData_iface)->lpVtbl->Release(&object->ID3DXFileData_iface);
        return ret;
    }
    if (object->children)
    {
        ID3DXFileData **new_children;

        new_children = FUNC5(FUNC2(), 0, object->children,
                sizeof(*object->children) * object->nb_children);
        if (new_children)
            object->children = new_children;
    }

    FUNC11("Found %u children\n", object->nb_children);

    *ret_iface = &object->ID3DXFileData_iface;

    return S_OK;
}