
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3drm_mesh_builder {size_t nb_materials; TYPE_1__* material_indices; TYPE_1__* materials; scalar_t__ nb_coords2d; TYPE_1__* pCoords2d; scalar_t__ nb_faces; scalar_t__ face_data_size; TYPE_1__* pFaceData; scalar_t__ normals_size; scalar_t__ nb_normals; TYPE_1__* normals; scalar_t__ vertices_size; scalar_t__ nb_vertices; TYPE_1__* vertices; int IDirect3DRMMeshBuilder3_iface; } ;
struct TYPE_2__ {scalar_t__ texture; scalar_t__ material; } ;
typedef size_t DWORD ;


 int IDirect3DRMMaterial2_Release (scalar_t__) ;
 int IDirect3DRMMeshBuilder3_SetName (int *,int *) ;
 int IDirect3DRMTexture3_Release (scalar_t__) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void clean_mesh_builder_data(struct d3drm_mesh_builder *mesh_builder)
{
    DWORD i;

    IDirect3DRMMeshBuilder3_SetName(&mesh_builder->IDirect3DRMMeshBuilder3_iface, ((void*)0));
    heap_free(mesh_builder->vertices);
    mesh_builder->vertices = ((void*)0);
    mesh_builder->nb_vertices = 0;
    mesh_builder->vertices_size = 0;
    heap_free(mesh_builder->normals);
    mesh_builder->normals = ((void*)0);
    mesh_builder->nb_normals = 0;
    mesh_builder->normals_size = 0;
    heap_free(mesh_builder->pFaceData);
    mesh_builder->pFaceData = ((void*)0);
    mesh_builder->face_data_size = 0;
    mesh_builder->nb_faces = 0;
    heap_free(mesh_builder->pCoords2d);
    mesh_builder->pCoords2d = ((void*)0);
    mesh_builder->nb_coords2d = 0;
    for (i = 0; i < mesh_builder->nb_materials; i++)
    {
        if (mesh_builder->materials[i].material)
            IDirect3DRMMaterial2_Release(mesh_builder->materials[i].material);
        if (mesh_builder->materials[i].texture)
            IDirect3DRMTexture3_Release(mesh_builder->materials[i].texture);
    }
    mesh_builder->nb_materials = 0;
    heap_free(mesh_builder->materials);
    mesh_builder->materials = ((void*)0);
    heap_free(mesh_builder->material_indices);
    mesh_builder->material_indices = ((void*)0);
}
