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
struct TYPE_2__ {scalar_t__ data; } ;
struct obs_source {TYPE_1__ context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct obs_source const*,char const*) ; 

__attribute__((used)) static inline bool FUNC1(const struct obs_source *source, const char *f)
{
	return FUNC0(source, f) && source->context.data;
}