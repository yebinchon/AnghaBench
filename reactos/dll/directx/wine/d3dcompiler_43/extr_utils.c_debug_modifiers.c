
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int HLSL_MODIFIER_COLUMN_MAJOR ;
 int HLSL_MODIFIER_CONST ;
 int HLSL_MODIFIER_IN ;
 int HLSL_MODIFIER_OUT ;
 int HLSL_MODIFIER_PRECISE ;
 int HLSL_MODIFIER_ROW_MAJOR ;
 int HLSL_STORAGE_EXTERN ;
 int HLSL_STORAGE_GROUPSHARED ;
 int HLSL_STORAGE_NOINTERPOLATION ;
 int HLSL_STORAGE_SHARED ;
 int HLSL_STORAGE_STATIC ;
 int HLSL_STORAGE_UNIFORM ;
 int HLSL_STORAGE_VOLATILE ;
 int strcat (char*,char*) ;
 char const* wine_dbg_sprintf (char*,char*) ;

const char *debug_modifiers(DWORD modifiers)
{
    char string[110];

    string[0] = 0;
    if (modifiers & HLSL_STORAGE_EXTERN)
        strcat(string, " extern");
    if (modifiers & HLSL_STORAGE_NOINTERPOLATION)
        strcat(string, " nointerpolation");
    if (modifiers & HLSL_MODIFIER_PRECISE)
        strcat(string, " precise");
    if (modifiers & HLSL_STORAGE_SHARED)
        strcat(string, " shared");
    if (modifiers & HLSL_STORAGE_GROUPSHARED)
        strcat(string, " groupshared");
    if (modifiers & HLSL_STORAGE_STATIC)
        strcat(string, " static");
    if (modifiers & HLSL_STORAGE_UNIFORM)
        strcat(string, " uniform");
    if (modifiers & HLSL_STORAGE_VOLATILE)
        strcat(string, " volatile");
    if (modifiers & HLSL_MODIFIER_CONST)
        strcat(string, " const");
    if (modifiers & HLSL_MODIFIER_ROW_MAJOR)
        strcat(string, " row_major");
    if (modifiers & HLSL_MODIFIER_COLUMN_MAJOR)
        strcat(string, " column_major");
    if ((modifiers & (HLSL_MODIFIER_IN | HLSL_MODIFIER_OUT)) == (HLSL_MODIFIER_IN | HLSL_MODIFIER_OUT))
        strcat(string, " inout");
    else if (modifiers & HLSL_MODIFIER_IN)
        strcat(string, " in");
    else if (modifiers & HLSL_MODIFIER_OUT)
        strcat(string, " out");

    return wine_dbg_sprintf("%s", string[0] ? string + 1 : "");
}
