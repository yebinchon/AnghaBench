#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tnid ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int cbSize; int uID; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_1__ NOTIFYICONDATA ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  NIM_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VOID
FUNC2(HWND hwnd)
{
    NOTIFYICONDATA tnid;

    FUNC1(&tnid, 0, sizeof(tnid));
    tnid.cbSize = sizeof(NOTIFYICONDATA);
    tnid.hWnd = hwnd;
    tnid.uID = 1;

    FUNC0(NIM_DELETE, &tnid);
}