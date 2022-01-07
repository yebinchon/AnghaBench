
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct YYLTYPE {int first_column; int first_line; } ;
struct TYPE_2__ {int source_file; } ;
typedef int DWORD ;


 int HLSL_LEVEL_ERROR ;
 int HLSL_MODIFIER_COLUMN_MAJOR ;
 int HLSL_MODIFIER_ROW_MAJOR ;
 int debug_modifiers (int) ;
 TYPE_1__ hlsl_ctx ;
 int hlsl_report_message (int ,int ,int ,int ,char*,...) ;

__attribute__((used)) static DWORD add_modifier(DWORD modifiers, DWORD mod, const struct YYLTYPE *loc)
{
    if (modifiers & mod)
    {
        hlsl_report_message(hlsl_ctx.source_file, loc->first_line, loc->first_column, HLSL_LEVEL_ERROR,
                "modifier '%s' already specified", debug_modifiers(mod));
        return modifiers;
    }
    if (mod & (HLSL_MODIFIER_ROW_MAJOR | HLSL_MODIFIER_COLUMN_MAJOR)
            && modifiers & (HLSL_MODIFIER_ROW_MAJOR | HLSL_MODIFIER_COLUMN_MAJOR))
    {
        hlsl_report_message(hlsl_ctx.source_file, loc->first_line, loc->first_column, HLSL_LEVEL_ERROR,
                "more than one matrix majority keyword");
        return modifiers;
    }
    return modifiers | mod;
}
