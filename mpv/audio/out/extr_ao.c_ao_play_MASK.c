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
struct TYPE_2__ {int (* play ) (struct ao*,void**,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct ao*,void**,int,int) ; 

int FUNC1(struct ao *ao, void **data, int samples, int flags)
{
    return ao->api->play(ao, data, samples, flags);
}