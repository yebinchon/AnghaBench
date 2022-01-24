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
struct mp_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mp_ring*) ; 
 int FUNC1 (struct mp_ring*) ; 

int FUNC2(struct mp_ring *buffer)
{
    return (FUNC1(buffer) - FUNC0(buffer));
}