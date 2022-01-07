
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_object {int size; int * data; } ;
struct d3dx9_base_effect {struct d3dx_object* objects; } ;
typedef int HRESULT ;


 int D3D_OK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int FIXME (char*,unsigned int) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,...) ;
 int debugstr_an (char const*,int) ;
 int memcpy (int *,char const*,int) ;
 int read_dword (char const**,int*) ;

__attribute__((used)) static HRESULT d3dx9_copy_data(struct d3dx9_base_effect *base, unsigned int object_id, const char **ptr)
{
    struct d3dx_object *object = &base->objects[object_id];

    if (object->size || object->data)
    {
        if (object_id)
            FIXME("Overwriting object id %u!\n", object_id);
        else
            TRACE("Overwriting object id 0.\n");

        HeapFree(GetProcessHeap(), 0, object->data);
        object->data = ((void*)0);
    }

    read_dword(ptr, &object->size);
    TRACE("Data size: %#x.\n", object->size);

    if (!object->size)
        return D3D_OK;

    object->data = HeapAlloc(GetProcessHeap(), 0, object->size);
    if (!object->data)
    {
        ERR("Failed to allocate object memory.\n");
        return E_OUTOFMEMORY;
    }

    TRACE("Data: %s.\n", debugstr_an(*ptr, object->size));
    memcpy(object->data, *ptr, object->size);

    *ptr += ((object->size + 3) & ~3);

    return D3D_OK;
}
