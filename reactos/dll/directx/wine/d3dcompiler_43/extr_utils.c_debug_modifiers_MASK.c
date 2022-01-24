#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int DWORD ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char const* FUNC1 (char*,char*) ; 

const char *FUNC2(DWORD modifiers)
{
    char string[110];

    string[0] = 0;
    if (modifiers & HLSL_STORAGE_EXTERN)
        FUNC0(string, " extern");                       /* 7 */
    if (modifiers & HLSL_STORAGE_NOINTERPOLATION)
        FUNC0(string, " nointerpolation");              /* 16 */
    if (modifiers & HLSL_MODIFIER_PRECISE)
        FUNC0(string, " precise");                      /* 8 */
    if (modifiers & HLSL_STORAGE_SHARED)
        FUNC0(string, " shared");                       /* 7 */
    if (modifiers & HLSL_STORAGE_GROUPSHARED)
        FUNC0(string, " groupshared");                  /* 12 */
    if (modifiers & HLSL_STORAGE_STATIC)
        FUNC0(string, " static");                       /* 7 */
    if (modifiers & HLSL_STORAGE_UNIFORM)
        FUNC0(string, " uniform");                      /* 8 */
    if (modifiers & HLSL_STORAGE_VOLATILE)
        FUNC0(string, " volatile");                     /* 9 */
    if (modifiers & HLSL_MODIFIER_CONST)
        FUNC0(string, " const");                        /* 6 */
    if (modifiers & HLSL_MODIFIER_ROW_MAJOR)
        FUNC0(string, " row_major");                    /* 10 */
    if (modifiers & HLSL_MODIFIER_COLUMN_MAJOR)
        FUNC0(string, " column_major");                 /* 13 */
    if ((modifiers & (HLSL_MODIFIER_IN | HLSL_MODIFIER_OUT)) == (HLSL_MODIFIER_IN | HLSL_MODIFIER_OUT))
        FUNC0(string, " inout");                        /* 6 */
    else if (modifiers & HLSL_MODIFIER_IN)
        FUNC0(string, " in");                           /* 3 */
    else if (modifiers & HLSL_MODIFIER_OUT)
        FUNC0(string, " out");                          /* 4 */

    return FUNC1("%s", string[0] ? string + 1 : "");
}