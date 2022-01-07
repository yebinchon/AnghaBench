
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_const_tab {unsigned int input_count; int * inputs_param; int update_version; } ;
typedef int ULONG64 ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int ULONG64_MAX ;
 scalar_t__ is_top_level_param_dirty (int ,int ) ;
 int top_level_parameter_from_parameter (int ) ;

__attribute__((used)) static BOOL is_const_tab_input_dirty(struct d3dx_const_tab *ctab, ULONG64 update_version)
{
    unsigned int i;

    if (update_version == ULONG64_MAX)
        update_version = ctab->update_version;
    for (i = 0; i < ctab->input_count; ++i)
    {
        if (is_top_level_param_dirty(top_level_parameter_from_parameter(ctab->inputs_param[i]),
                update_version))
            return TRUE;
    }
    return FALSE;
}
