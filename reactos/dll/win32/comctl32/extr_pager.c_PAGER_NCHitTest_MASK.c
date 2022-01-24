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
struct TYPE_8__ {int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_7__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ PAGER_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  HTCLIENT ; 
 int /*<<< orphan*/  HTTRANSPARENT ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static LRESULT
FUNC2 (const PAGER_INFO* infoPtr, INT x, INT y)
{
    POINT pt;
    INT nHit;

    pt.x = x;
    pt.y = y;

    FUNC1 (infoPtr->hwndSelf, &pt);
    nHit = FUNC0(infoPtr, &pt);

    return (nHit < 0) ? HTTRANSPARENT : HTCLIENT;
}