
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_top_level_parameter {unsigned int annotation_count; int param; int * annotations; } ;


 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int d3dx_pool_release_shared_parameter (struct d3dx_top_level_parameter*) ;
 int free_parameter (int *,int ,int ) ;

__attribute__((used)) static void free_top_level_parameter(struct d3dx_top_level_parameter *param)
{
    if (param->annotations)
    {
        unsigned int i;

        for (i = 0; i < param->annotation_count; ++i)
            free_parameter(&param->annotations[i], FALSE, FALSE);
        HeapFree(GetProcessHeap(), 0, param->annotations);
    }
    d3dx_pool_release_shared_parameter(param);
    free_parameter(&param->param, FALSE, FALSE);
}
