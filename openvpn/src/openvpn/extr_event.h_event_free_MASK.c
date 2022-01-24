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
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct event_set*) ;} ;
struct event_set {TYPE_1__ func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_set*) ; 

__attribute__((used)) static inline void
FUNC1(struct event_set *es)
{
    if (es)
    {
        (*es->func.free)(es);
    }
}