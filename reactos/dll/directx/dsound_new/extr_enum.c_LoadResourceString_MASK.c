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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPVOID ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsound_hInstance ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID
FUNC4(
    UINT ResourceId,
    LPVOID Buffer,
    UINT ccount,
    LPVOID DefaultString,
    BOOL bUnicode)
{
    if (bUnicode)
    {
        /* load localized string */
        if (!FUNC1(dsound_hInstance, ResourceId, (LPWSTR)Buffer, ccount))
        {
            /* default device name */
            FUNC3((LPWSTR)Buffer, (LPWSTR)DefaultString);
        }
    }
    else
    {
        /* load localized string */
        if (!FUNC0(dsound_hInstance, ResourceId, (LPSTR)Buffer, ccount))
        {
            /* default device name */
            FUNC2((LPSTR)Buffer, (LPSTR)DefaultString);
        }
    }
}