
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_parameter {TYPE_1__* top_level_param; } ;
struct TYPE_2__ {struct d3dx_parameter param; } ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_top_level_parameter(struct d3dx_parameter *param)
{
    return &param->top_level_param->param == param;
}
