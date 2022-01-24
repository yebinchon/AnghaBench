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
struct vo_internal {int /*<<< orphan*/  lock; int /*<<< orphan*/  current_frame; } ;
struct vo_frame {int dummy; } ;
struct vo {struct vo_internal* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vo_frame* FUNC2 (int /*<<< orphan*/ ) ; 

struct vo_frame *FUNC3(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    FUNC0(&in->lock);
    struct vo_frame *r = FUNC2(vo->in->current_frame);
    FUNC1(&in->lock);
    return r;
}