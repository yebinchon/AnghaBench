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
struct TYPE_3__ {int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ STATUS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HTHEME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  themeClass ; 

__attribute__((used)) static LRESULT FUNC3 (const STATUS_INFO* infoPtr)
{
    HTHEME theme = FUNC1 (infoPtr->Self);
    FUNC0 (theme);
    FUNC2 (infoPtr->Self, themeClass);
    return 0;
}