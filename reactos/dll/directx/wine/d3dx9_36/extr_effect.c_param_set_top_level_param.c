
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {void* top_level_param; } ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static BOOL param_set_top_level_param(void *top_level_param, struct d3dx_parameter *param)
{
    param->top_level_param = top_level_param;
    return FALSE;
}
