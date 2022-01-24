#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HTHEME ;
typedef  TYPE_1__ HEADER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT
FUNC2 (HEADER_INFO *infoPtr)
{
    HTHEME theme = FUNC1(infoPtr->hwndSelf);
    FUNC0(theme);
    return 0;
}