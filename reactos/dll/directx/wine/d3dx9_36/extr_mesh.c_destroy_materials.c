
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mesh_data {size_t num_materials; TYPE_1__* material_indices; TYPE_1__* materials; } ;
struct TYPE_2__ {struct TYPE_2__* pTextureFilename; } ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void destroy_materials(struct mesh_data *mesh)
{
    DWORD i;
    for (i = 0; i < mesh->num_materials; i++)
        HeapFree(GetProcessHeap(), 0, mesh->materials[i].pTextureFilename);
    HeapFree(GetProcessHeap(), 0, mesh->materials);
    HeapFree(GetProcessHeap(), 0, mesh->material_indices);
    mesh->num_materials = 0;
    mesh->materials = ((void*)0);
    mesh->material_indices = ((void*)0);
}
