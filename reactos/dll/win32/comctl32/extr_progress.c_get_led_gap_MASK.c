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
typedef  TYPE_1__ PROGRESS_INFO ;
typedef  scalar_t__ HTHEME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int LED_GAP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TMT_PROGRESSSPACESIZE ; 

__attribute__((used)) static inline int FUNC3 ( const PROGRESS_INFO *infoPtr )
{
    HTHEME theme = FUNC1 (infoPtr->Self);
    if (theme)
    {
        int spaceSize;
        if (FUNC2( FUNC0( theme, 0, 0, TMT_PROGRESSSPACESIZE, &spaceSize )))
            return spaceSize;
    }

    return LED_GAP;
}