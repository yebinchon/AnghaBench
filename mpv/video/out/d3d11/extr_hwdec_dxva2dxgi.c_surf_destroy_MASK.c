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
struct ra_hwdec_mapper {int /*<<< orphan*/  ra; } ;
struct queue_surf {int /*<<< orphan*/  tex; int /*<<< orphan*/  stage9; int /*<<< orphan*/  surf9; int /*<<< orphan*/  tex9; int /*<<< orphan*/  stage11; int /*<<< orphan*/  idle11; int /*<<< orphan*/  tex11; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct queue_surf*) ; 

__attribute__((used)) static void FUNC3(struct ra_hwdec_mapper *mapper,
                         struct queue_surf *surf)
{
    if (!surf)
        return;
    FUNC0(surf->tex11);
    FUNC0(surf->idle11);
    FUNC0(surf->stage11);
    FUNC0(surf->tex9);
    FUNC0(surf->surf9);
    FUNC0(surf->stage9);
    FUNC1(mapper->ra, &surf->tex);
    FUNC2(surf);
}