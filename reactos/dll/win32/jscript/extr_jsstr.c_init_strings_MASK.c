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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 void* empty_str ; 
 void* FUNC0 (char const*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char**) ; 
 void* nan_str ; 
 void* null_bstr_str ; 
 void* undefined_str ; 

BOOL FUNC2(void)
{
    static const WCHAR NaNW[] = { 'N','a','N',0 };
    static const WCHAR undefinedW[] = {'u','n','d','e','f','i','n','e','d',0};
    WCHAR *ptr;

    if(!(empty_str = FUNC1(0, &ptr)))
        return FALSE;
    if(!(nan_str = FUNC0(NaNW)))
        return FALSE;
    if(!(undefined_str = FUNC0(undefinedW)))
        return FALSE;
    if(!(null_bstr_str = FUNC1(0, &ptr)))
        return FALSE;
     return TRUE;
}