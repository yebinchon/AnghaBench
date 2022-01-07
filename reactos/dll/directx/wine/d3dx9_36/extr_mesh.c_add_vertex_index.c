
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct word_array {scalar_t__ count; int * items; } ;
struct dynamic_array {int dummy; } ;
typedef int WORD ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int reserve (struct dynamic_array*,scalar_t__,int) ;

__attribute__((used)) static HRESULT add_vertex_index(struct word_array *array, WORD vertex_index)
{
    if (!reserve((struct dynamic_array *)array, array->count + 1, sizeof(array->items[0])))
        return E_OUTOFMEMORY;

    array->items[array->count++] = vertex_index;
    return S_OK;
}
