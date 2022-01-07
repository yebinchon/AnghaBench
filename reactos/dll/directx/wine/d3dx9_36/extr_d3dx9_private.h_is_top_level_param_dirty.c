
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_top_level_parameter {scalar_t__ update_version; struct d3dx_shared_data* shared_data; } ;
struct d3dx_shared_data {scalar_t__ update_version; } ;
typedef scalar_t__ ULONG64 ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_top_level_param_dirty(struct d3dx_top_level_parameter *param, ULONG64 update_version)
{
    struct d3dx_shared_data *shared_data;

    if ((shared_data = param->shared_data))
        return update_version < shared_data->update_version;
    else
        return update_version < param->update_version;
}
