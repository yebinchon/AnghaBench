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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* PWCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ REG_MULTI_SZ ; 
 scalar_t__* FUNC5 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,scalar_t__) ; 

PWCHAR *FUNC7( HANDLE RegHandle, PWCHAR ValueName ) {
    PWCHAR String, TerminatedString, Tmp;
    PWCHAR *Table;
    DWORD Type, Length, i, j;
    
    String = FUNC4(RegHandle, ValueName, &Type, &Length);
    if (!String) return NULL;
    if (Type != REG_MULTI_SZ)
    {
        FUNC0("Type mismatch for %S (%d != %d)\n", ValueName, Type, REG_MULTI_SZ);
        //HeapFree(GetProcessHeap(), 0, String);
        //return NULL;
    }
    
    TerminatedString = FUNC5(String, Length);
    FUNC3(FUNC1(), 0, String);
    if (!TerminatedString) return NULL;

    for (Tmp = TerminatedString, i = 0; *Tmp; Tmp++, i++) while (*Tmp) Tmp++;
    
    Table = FUNC2(FUNC1(), 0, (i + 1) * sizeof(PWCHAR));
    if (!Table)
    {
        FUNC3(FUNC1(), 0, TerminatedString);
        return NULL;
    }
    
    for (Tmp = TerminatedString, j = 0; *Tmp; Tmp++, j++)
    {
        PWCHAR Orig = Tmp;
        
        for (i = 0; *Tmp; i++, Tmp++);
        
        Table[j] = FUNC2(FUNC1(), 0, i * sizeof(WCHAR));
        FUNC6(Table[j], Orig, i * sizeof(WCHAR));
    }
    
    Table[j] = NULL;
    
    FUNC3(FUNC1(), 0, TerminatedString);
    
    return Table;
}