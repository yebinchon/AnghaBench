
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int top_level_param; } ;
typedef int ULONG64 ;
typedef int BOOL ;


 int is_top_level_param_dirty (int ,int ) ;

__attribute__((used)) static inline BOOL is_param_dirty(struct d3dx_parameter *param, ULONG64 update_version)
{
    return is_top_level_param_dirty(param->top_level_param, update_version);
}
