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
struct rrdengine_instance {int dummy; } ;
struct rrdeng_page_descr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_instance*,struct rrdeng_page_descr*) ; 

void FUNC3(struct rrdengine_instance *ctx, struct rrdeng_page_descr *descr)
{
    FUNC1(ctx, descr);
    FUNC0(descr);
    FUNC2(ctx, descr);
}