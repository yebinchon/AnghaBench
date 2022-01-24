#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Self; TYPE_1__* Part; } ;
struct TYPE_5__ {scalar_t__ OrigProc; int /*<<< orphan*/  EditHwnd; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ IPPART_INFO ;
typedef  TYPE_2__ IPADDRESS_INFO ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_WNDPROC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static LRESULT FUNC3 (IPADDRESS_INFO *infoPtr)
{
    int i;

    FUNC1("\n");

    for (i = 0; i < 4; i++) {
	IPPART_INFO* part = &infoPtr->Part[i];
        FUNC0 (part->EditHwnd, GWLP_WNDPROC, (DWORD_PTR)part->OrigProc);
    }

    FUNC0 (infoPtr->Self, 0, 0);
    FUNC2 (infoPtr);
    return 0;
}