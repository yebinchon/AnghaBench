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
struct ao {TYPE_1__* api; } ;
struct TYPE_2__ {double (* get_delay ) (struct ao*) ;} ;

/* Variables and functions */
 double FUNC0 (struct ao*) ; 

double FUNC1(struct ao *ao)
{
    return ao->api->get_delay(ao);
}