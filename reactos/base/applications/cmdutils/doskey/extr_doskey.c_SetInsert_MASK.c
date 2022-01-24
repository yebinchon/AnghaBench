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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int ENABLE_EXTENDED_FLAGS ; 
 int ENABLE_INSERT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VOID FUNC3(DWORD dwFlag)
{
    /*
     * NOTE: Enabling the ENABLE_INSERT_MODE mode can also be done by calling
     * kernel32:SetConsoleCommandHistoryMode(CONSOLE_OVERSTRIKE) (deprecated).
     */
    DWORD dwMode;
    HANDLE hConsole = FUNC1(STD_INPUT_HANDLE);
    FUNC0(hConsole, &dwMode);
    dwMode |= ENABLE_EXTENDED_FLAGS;
    FUNC2(hConsole, (dwMode & ~ENABLE_INSERT_MODE) | dwFlag);
}