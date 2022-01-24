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
typedef  int /*<<< orphan*/  pagesetup_data ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DEVMODEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmb1 ; 
 int /*<<< orphan*/  cmb2 ; 
 int /*<<< orphan*/  cmb3 ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(HWND hDlg, pagesetup_data *data)
{
    DEVMODEW *dm;
    LPWSTR devname, portname;

    dm       = FUNC2(data);
    devname  = FUNC3(data);
    portname = FUNC4(data);

    FUNC1(hDlg, cmb1, devname);
    FUNC0(hDlg, cmb2, devname, portname, dm);
    FUNC0(hDlg, cmb3, devname, portname, dm);

    FUNC5(data, portname);
    FUNC5(data, devname);
    FUNC6(data, dm);
}