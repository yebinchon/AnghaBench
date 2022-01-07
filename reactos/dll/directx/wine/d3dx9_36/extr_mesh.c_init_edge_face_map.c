
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edge_face_map {TYPE_1__* entries; int * lists; } ;
struct TYPE_2__ {int v2; int face; int entry; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int D3D_OK ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int list_add_head (int *,int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT init_edge_face_map(struct edge_face_map *edge_face_map, const DWORD *index_buffer,
        const DWORD *point_reps, DWORD num_faces)
{
    DWORD face, edge;
    DWORD i;

    edge_face_map->lists = HeapAlloc(GetProcessHeap(), 0, 3 * num_faces * sizeof(*edge_face_map->lists));
    if (!edge_face_map->lists) return E_OUTOFMEMORY;

    edge_face_map->entries = HeapAlloc(GetProcessHeap(), 0, 3 * num_faces * sizeof(*edge_face_map->entries));
    if (!edge_face_map->entries) return E_OUTOFMEMORY;



    for (i = 0; i < 3 * num_faces; i++)
    {
        list_init(&edge_face_map->lists[i]);
    }

    for (face = 0; face < num_faces; face++)
    {
        for (edge = 0; edge < 3; edge++)
        {
            DWORD v1 = index_buffer[3*face + edge];
            DWORD v2 = index_buffer[3*face + (edge+1)%3];
            DWORD new_v1 = point_reps[v1];
            DWORD new_v2 = point_reps[v2];

            if (v1 != v2)
            {
                i = 3*face + edge;
                edge_face_map->entries[i].v2 = new_v2;
                edge_face_map->entries[i].face = face;
                list_add_head(&edge_face_map->lists[new_v1], &edge_face_map->entries[i].entry);
            }
        }
    }

    return D3D_OK;
}
