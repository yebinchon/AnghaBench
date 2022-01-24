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
struct obs_source_info {int dummy; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct obs_source_info const*) ; 
 struct obs_source_info* FUNC1 (char const*) ; 

obs_data_t *FUNC2(const char *id)
{
	const struct obs_source_info *info = FUNC1(id);
	return info ? FUNC0(info) : NULL;
}