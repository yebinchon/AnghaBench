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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMIXEROBJ ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT
FUNC3(HWND hControl, DWORD Id)
{
    int iCurSel;
    UINT DevNum;

    iCurSel = FUNC1(hControl, CB_GETCURSEL, 0, 0);

    if (iCurSel == CB_ERR)
        return 0;

    DevNum = (UINT) FUNC1(hControl, CB_GETITEMDATA, iCurSel, 0);
    if (DevNum == (UINT) CB_ERR)
        return 0;

    if (FUNC2((HMIXEROBJ)FUNC0(DevNum), &DevNum, Id) != MMSYSERR_NOERROR)
        return 0;

    return DevNum;
}