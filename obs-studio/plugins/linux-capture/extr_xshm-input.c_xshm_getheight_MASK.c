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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 TYPE_1__* data ; 

__attribute__((used)) static uint32_t FUNC1(void *vptr)
{
	FUNC0(vptr);
	return data->height;
}