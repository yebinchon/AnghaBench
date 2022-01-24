#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  settings; scalar_t__ data; } ;
struct TYPE_7__ {int output_flags; int /*<<< orphan*/  (* update ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int defer_update; TYPE_1__ context; TYPE_2__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int OBS_SOURCE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(obs_source_t *source, obs_data_t *settings)
{
	if (!FUNC1(source, "obs_source_update"))
		return;

	if (settings)
		FUNC0(source->context.settings, settings);

	if (source->info.output_flags & OBS_SOURCE_VIDEO) {
		source->defer_update = true;
	} else if (source->context.data && source->info.update) {
		source->info.update(source->context.data,
				    source->context.settings);
	}
}