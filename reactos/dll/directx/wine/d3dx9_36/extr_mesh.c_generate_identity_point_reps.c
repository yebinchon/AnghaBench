
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;

__attribute__((used)) static DWORD *generate_identity_point_reps(DWORD num_vertices)
{
        DWORD *id_point_reps;
        DWORD i;

        id_point_reps = HeapAlloc(GetProcessHeap(), 0, num_vertices * sizeof(*id_point_reps));
        if (!id_point_reps)
            return ((void*)0);

        for (i = 0; i < num_vertices; i++)
        {
            id_point_reps[i] = i;
        }

        return id_point_reps;
}
