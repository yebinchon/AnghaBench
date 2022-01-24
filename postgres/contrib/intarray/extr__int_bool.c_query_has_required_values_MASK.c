#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ size; } ;
typedef  TYPE_1__ QUERYTYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (scalar_t__) ; 

bool
FUNC2(QUERYTYPE *query)
{
	if (query->size <= 0)
		return false;
	return FUNC1(FUNC0(query) + query->size - 1);
}