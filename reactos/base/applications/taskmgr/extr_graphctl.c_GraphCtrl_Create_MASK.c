#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {void* m_hWnd; void* m_hParentWnd; } ;
typedef  TYPE_1__ TGraphCtrl ;
typedef  void* HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(TGraphCtrl* this, HWND hWnd, HWND hParentWnd, UINT nID)
{
    FUNC0(this);
    this->m_hParentWnd = hParentWnd;
    this->m_hWnd = hWnd;

    FUNC1(this);

    return;
}