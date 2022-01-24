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
struct TYPE_3__ {scalar_t__ MinVal; scalar_t__ MaxVal; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ PROGRESS_INFO ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline int FUNC2( const PROGRESS_INFO *infoPtr, LONG style,
                                    const RECT* rect, INT value )
{
    return FUNC0 (value - infoPtr->MinVal, FUNC1 (style, rect),
                      infoPtr->MaxVal - infoPtr->MinVal);
}