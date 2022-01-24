#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UPDOWN_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_DECR ; 
 int /*<<< orphan*/  FLAG_INCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT FUNC2 (const UPDOWN_INFO *infoPtr, RECT *rect, POINT pt)
{
    FUNC1 (infoPtr, rect, FLAG_INCR);
    if(FUNC0(rect, pt)) return FLAG_INCR;

    FUNC1 (infoPtr, rect, FLAG_DECR);
    if(FUNC0(rect, pt)) return FLAG_DECR;

    return 0;
}