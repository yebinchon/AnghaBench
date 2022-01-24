#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {scalar_t__* szFileTitle; scalar_t__* szFileName; } ;
typedef  int /*<<< orphan*/  LPCTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID FUNC3(LPCTSTR szFileName)
{
    FUNC2(Globals.szFileName, FUNC0(Globals.szFileName), szFileName);
    Globals.szFileTitle[0] = 0;
    FUNC1(szFileName, Globals.szFileTitle, FUNC0(Globals.szFileTitle));
}