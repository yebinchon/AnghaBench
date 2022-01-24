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
typedef  scalar_t__ zic_t ;

/* Variables and functions */
 scalar_t__ ZIC_MAX ; 
 scalar_t__ ZIC_MIN ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static zic_t
FUNC1(zic_t t1, zic_t t2)
{
	if (t1 < 0 ? t2 < ZIC_MIN - t1 : ZIC_MAX - t1 < t2)
		FUNC0();
	return t1 + t2;
}