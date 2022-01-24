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
struct edge_face_map {TYPE_1__* entries; int /*<<< orphan*/ * lists; } ;
struct TYPE_2__ {int v2; int face; int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(struct edge_face_map *edge_face_map, const DWORD *index_buffer,
        const DWORD *point_reps, DWORD num_faces)
{
    DWORD face, edge;
    DWORD i;

    edge_face_map->lists = FUNC1(FUNC0(), 0, 3 * num_faces * sizeof(*edge_face_map->lists));
    if (!edge_face_map->lists) return E_OUTOFMEMORY;

    edge_face_map->entries = FUNC1(FUNC0(), 0, 3 * num_faces * sizeof(*edge_face_map->entries));
    if (!edge_face_map->entries) return E_OUTOFMEMORY;


    /* Initialize all lists */
    for (i = 0; i < 3 * num_faces; i++)
    {
        FUNC3(&edge_face_map->lists[i]);
    }
    /* Build edge face mapping */
    for (face = 0; face < num_faces; face++)
    {
        for (edge = 0; edge < 3; edge++)
        {
            DWORD v1 = index_buffer[3*face + edge];
            DWORD v2 = index_buffer[3*face + (edge+1)%3];
            DWORD new_v1 = point_reps[v1]; /* What v1 has been replaced with */
            DWORD new_v2 = point_reps[v2];

            if (v1 != v2) /* Only map non-collapsed edges */
            {
                i = 3*face + edge;
                edge_face_map->entries[i].v2 = new_v2;
                edge_face_map->entries[i].face = face;
                FUNC2(&edge_face_map->lists[new_v1], &edge_face_map->entries[i].entry);
            }
        }
    }

    return D3D_OK;
}