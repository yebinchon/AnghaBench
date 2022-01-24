#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hdc; } ;
struct TYPE_7__ {int /*<<< orphan*/  Count; int /*<<< orphan*/  Types; int /*<<< orphan*/  Points; } ;
struct TYPE_8__ {TYPE_1__ pathdata; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpPath ;
typedef  TYPE_3__ GpGraphics ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GpStatus FUNC3(GpGraphics *graphics, GpPath *path)
{
    GpStatus result;

    FUNC0(graphics->hdc);
    result = FUNC2(graphics, NULL, path->pathdata.Points,
                       path->pathdata.Types, path->pathdata.Count, FALSE);
    FUNC1(graphics->hdc);
    return result;
}