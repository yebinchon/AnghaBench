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
struct vo_internal {int send_reset; int /*<<< orphan*/  lock; } ;
struct vo {struct vo_internal* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 

void FUNC5(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    FUNC1(&in->lock);
    FUNC0(vo);
    FUNC3(vo);
    in->send_reset = true;
    FUNC4(vo);
    FUNC2(&in->lock);
}