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
struct TYPE_4__ {int bias; } ;
typedef  TYPE_1__ DateInstance ;
typedef  scalar_t__ DOUBLE ;

/* Variables and functions */
 int MS_PER_MINUTE ; 
 int FUNC0 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static inline DOUBLE FUNC1(DOUBLE time, DateInstance *date)
{
    return time - (FUNC0(time, date)+date->bias)*MS_PER_MINUTE;
}