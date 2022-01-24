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
typedef  int /*<<< orphan*/ * LPDWORD ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(LPCSTR lpszDeviceKey, LPDWORD pField, LPCSTR lpszSubString)
{
    const char* ResultStr;
    ResultStr = FUNC1(lpszDeviceKey, lpszSubString);
    if (ResultStr != NULL)
    {
        *pField = FUNC2(ResultStr + FUNC0(lpszSubString), NULL, 16);
    }
}