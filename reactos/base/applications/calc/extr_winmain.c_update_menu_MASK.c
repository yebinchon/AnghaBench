#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ usesep; } ;
struct TYPE_4__ {scalar_t__* sel; scalar_t__ idc; int /*<<< orphan*/  idm; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  BST_UNCHECKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDM_VIEW_GROUP ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int MF_UNCHECKED ; 
 unsigned int FUNC4 (TYPE_1__*) ; 
 TYPE_2__ calc ; 
 TYPE_1__* upd ; 

__attribute__((used)) static void FUNC5(HWND hWnd)
{
    HMENU        hMenu = FUNC3(FUNC2(hWnd), 1);
    unsigned int x;

    for (x=0; x<FUNC4(upd); x++) {
        if (*(upd[x].sel) != upd[x].idc) {
            FUNC1(hMenu, upd[x].idm, MF_BYCOMMAND|MF_UNCHECKED);
            FUNC0(hWnd, upd[x].idc, BST_UNCHECKED);
        } else {
            FUNC1(hMenu, upd[x].idm, MF_BYCOMMAND|MF_CHECKED);
            FUNC0(hWnd, upd[x].idc, BST_CHECKED);
        }
    }
    FUNC1(hMenu, IDM_VIEW_GROUP, MF_BYCOMMAND|(calc.usesep ? MF_CHECKED : MF_UNCHECKED));
}