#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {short x; short y; } ;
struct TYPE_7__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTCLIENT ; 
 int /*<<< orphan*/  HTTRANSPARENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (TYPE_1__ const*,TYPE_2__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline LRESULT
FUNC4 (const TAB_INFO *infoPtr, LPARAM lParam)
{
  POINT pt;
  UINT dummyflag;

  pt.x = (short)FUNC1(lParam);
  pt.y = (short)FUNC0(lParam);
  FUNC2(infoPtr->hwnd, &pt);

  if (FUNC3(infoPtr, pt, &dummyflag) == -1)
    return HTTRANSPARENT;
  else
    return HTCLIENT;
}