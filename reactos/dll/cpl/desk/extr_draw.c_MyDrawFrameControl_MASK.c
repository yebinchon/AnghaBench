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
typedef  int UINT ;
typedef  int /*<<< orphan*/  LPRECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLOR_SCHEME ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  DFC_BUTTON 130 
#define  DFC_CAPTION 129 
#define  DFC_SCROLL 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

BOOL
FUNC3(HDC hDC, LPRECT rc, UINT uType, UINT uState, COLOR_SCHEME *scheme)
{
    switch(uType)
    {
    case DFC_BUTTON:
        return FUNC0(hDC, rc, uState, scheme);
    case DFC_CAPTION:
        return FUNC1(hDC, rc, uState, scheme);
    case DFC_SCROLL:
        return FUNC2(hDC, rc, uState, scheme);
    }
    return FALSE;
}