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
struct TYPE_2__ {scalar_t__ sc_dequeue; } ;
struct rte_ring {TYPE_1__ cons; } ;

/* Variables and functions */
 int FUNC0 (struct rte_ring*,void**) ; 
 int FUNC1 (struct rte_ring*,void**) ; 

__attribute__((used)) static inline int
FUNC2(struct rte_ring *r, void **obj_p)
{
    if (r->cons.sc_dequeue)
        return FUNC1(r, obj_p);
    else
        return FUNC0(r, obj_p);
}