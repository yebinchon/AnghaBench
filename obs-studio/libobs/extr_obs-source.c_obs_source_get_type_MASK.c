#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  enum obs_source_type { ____Placeholder_obs_source_type } obs_source_type ;

/* Variables and functions */
 int OBS_SOURCE_TYPE_INPUT ; 
 scalar_t__ FUNC0 (TYPE_2__ const*,char*) ; 

enum obs_source_type FUNC1(const obs_source_t *source)
{
	return FUNC0(source, "obs_source_get_type")
		       ? source->info.type
		       : OBS_SOURCE_TYPE_INPUT;
}