#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct d3drm_mesh_builder {size_t nb_materials; TYPE_1__* material_indices; TYPE_1__* materials; scalar_t__ nb_coords2d; TYPE_1__* pCoords2d; scalar_t__ nb_faces; scalar_t__ face_data_size; TYPE_1__* pFaceData; scalar_t__ normals_size; scalar_t__ nb_normals; TYPE_1__* normals; scalar_t__ vertices_size; scalar_t__ nb_vertices; TYPE_1__* vertices; int /*<<< orphan*/  IDirect3DRMMeshBuilder3_iface; } ;
struct TYPE_2__ {scalar_t__ texture; scalar_t__ material; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct d3drm_mesh_builder *mesh_builder)
{
    DWORD i;

    FUNC1(&mesh_builder->IDirect3DRMMeshBuilder3_iface, NULL);
    FUNC3(mesh_builder->vertices);
    mesh_builder->vertices = NULL;
    mesh_builder->nb_vertices = 0;
    mesh_builder->vertices_size = 0;
    FUNC3(mesh_builder->normals);
    mesh_builder->normals = NULL;
    mesh_builder->nb_normals = 0;
    mesh_builder->normals_size = 0;
    FUNC3(mesh_builder->pFaceData);
    mesh_builder->pFaceData = NULL;
    mesh_builder->face_data_size = 0;
    mesh_builder->nb_faces = 0;
    FUNC3(mesh_builder->pCoords2d);
    mesh_builder->pCoords2d = NULL;
    mesh_builder->nb_coords2d = 0;
    for (i = 0; i < mesh_builder->nb_materials; i++)
    {
        if (mesh_builder->materials[i].material)
            FUNC0(mesh_builder->materials[i].material);
        if (mesh_builder->materials[i].texture)
            FUNC2(mesh_builder->materials[i].texture);
    }
    mesh_builder->nb_materials = 0;
    FUNC3(mesh_builder->materials);
    mesh_builder->materials = NULL;
    FUNC3(mesh_builder->material_indices);
    mesh_builder->material_indices = NULL;
}