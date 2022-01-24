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
struct TYPE_2__ {int num; } ;
struct ao {TYPE_1__ channels; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,void*,int) ; 

void FUNC2(struct ao *ao, void **data, int num_samples)
{
    bool planar = FUNC0(ao->format);
    int planes = planar ? ao->channels.num : 1;
    int plane_samples = num_samples * (planar ? 1: ao->channels.num);
    for (int n = 0; n < planes; n++)
        FUNC1(ao, data[n], plane_samples);
}