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
struct TYPE_2__ {int /*<<< orphan*/  clrHighlight; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HEADER_INFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ comctl32_color ; 

__attribute__((used)) static void
FUNC4(const HEADER_INFO *infoPtr, HDC hdc)
{
    HBRUSH brush;
    RECT r;
    
    FUNC3(infoPtr, &r);
    brush = FUNC0(comctl32_color.clrHighlight);
    FUNC2(hdc, &r, brush);
    FUNC1(brush);
}