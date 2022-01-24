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
typedef  int /*<<< orphan*/  obs_properties_t ;
struct TYPE_7__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * (* get_properties ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef  TYPE_3__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

obs_properties_t *FUNC3(const obs_output_t *output)
{
	if (!FUNC0(output, "obs_output_properties"))
		return NULL;

	if (output && output->info.get_properties) {
		obs_properties_t *props;
		props = output->info.get_properties(output->context.data);
		FUNC1(props, output->context.settings);
		return props;
	}

	return NULL;
}