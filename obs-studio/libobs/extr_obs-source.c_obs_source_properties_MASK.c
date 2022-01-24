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
struct TYPE_6__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * (* get_properties ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  type_data; int /*<<< orphan*/ * (* get_properties2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_1__ context; TYPE_2__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

obs_properties_t *FUNC4(const obs_source_t *source)
{
	if (!FUNC0(source, "obs_source_properties"))
		return NULL;

	if (source->info.get_properties2) {
		obs_properties_t *props;
		props = source->info.get_properties2(source->context.data,
						     source->info.type_data);
		FUNC1(props, source->context.settings);
		return props;

	} else if (source->info.get_properties) {
		obs_properties_t *props;
		props = source->info.get_properties(source->context.data);
		FUNC1(props, source->context.settings);
		return props;
	}

	return NULL;
}