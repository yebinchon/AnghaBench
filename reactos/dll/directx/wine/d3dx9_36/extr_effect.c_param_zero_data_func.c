
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int * data; } ;
typedef int BOOL ;


 int FALSE ;

__attribute__((used)) static BOOL param_zero_data_func(void *dummy, struct d3dx_parameter *param)
{
    param->data = ((void*)0);
    return FALSE;
}
