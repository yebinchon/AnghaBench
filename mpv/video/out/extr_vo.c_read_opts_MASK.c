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
typedef  scalar_t__ uint64_t ;
struct vo_internal {int /*<<< orphan*/  lock; scalar_t__ timing_offset; } ;
struct vo {TYPE_1__* opts; struct vo_internal* in; } ;
struct TYPE_2__ {int timing_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vo *vo)
{
    struct vo_internal *in = vo->in;

    FUNC0(&in->lock);
    in->timing_offset = (uint64_t)(vo->opts->timing_offset * 1e6);
    FUNC1(&in->lock);
}