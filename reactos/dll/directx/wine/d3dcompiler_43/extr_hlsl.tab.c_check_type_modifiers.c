
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_location {int col; int line; int file; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HLSL_LEVEL_ERROR ;
 int HLSL_TYPE_MODIFIERS_MASK ;
 int TRUE ;
 int hlsl_report_message (int ,int ,int ,int ,char*) ;

__attribute__((used)) static BOOL check_type_modifiers(DWORD modifiers, struct source_location *loc)
{
    if (modifiers & ~HLSL_TYPE_MODIFIERS_MASK)
    {
        hlsl_report_message(loc->file, loc->line, loc->col, HLSL_LEVEL_ERROR,
                "modifier not allowed on typedefs");
        return FALSE;
    }
    return TRUE;
}
