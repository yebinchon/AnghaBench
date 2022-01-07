
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sincos_table {int * cos; int * sin; } ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int TRUE ;
 int cosf (float) ;
 int sinf (float) ;

__attribute__((used)) static BOOL compute_sincos_table(struct sincos_table *sincos_table, float angle_start, float angle_step, int n)
{
    float angle;
    int i;

    sincos_table->sin = HeapAlloc(GetProcessHeap(), 0, n * sizeof(*sincos_table->sin));
    if (!sincos_table->sin)
    {
        return FALSE;
    }
    sincos_table->cos = HeapAlloc(GetProcessHeap(), 0, n * sizeof(*sincos_table->cos));
    if (!sincos_table->cos)
    {
        HeapFree(GetProcessHeap(), 0, sincos_table->sin);
        return FALSE;
    }

    angle = angle_start;
    for (i = 0; i < n; i++)
    {
        sincos_table->sin[i] = sinf(angle);
        sincos_table->cos[i] = cosf(angle);
        angle += angle_step;
    }

    return TRUE;
}
