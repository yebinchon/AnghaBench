#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_22__ {int default_flags; int /*<<< orphan*/ * private_settings; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
typedef  scalar_t__ int64_t ;
typedef  enum obs_monitoring_type { ____Placeholder_obs_monitoring_type } obs_monitoring_type ;
typedef  enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;
typedef  enum obs_deinterlace_field_order { ____Placeholder_obs_deinterlace_field_order } obs_deinterlace_field_order ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int) ; 
 int OBS_MONITORING_TYPE_MONITOR_ONLY ; 
 scalar_t__ OBS_SOURCE_MONITOR_BY_DEFAULT ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 double FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* FUNC15 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,float) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,float) ; 

__attribute__((used)) static obs_source_t *FUNC33(obs_data_t *source_data)
{
	obs_data_array_t *filters = FUNC5(source_data, "filters");
	obs_source_t *source;
	const char *name = FUNC10(source_data, "name");
	const char *id = FUNC10(source_data, "id");
	obs_data_t *settings = FUNC9(source_data, "settings");
	obs_data_t *hotkeys = FUNC9(source_data, "hotkeys");
	double volume;
	double balance;
	int64_t sync;
	uint32_t prev_ver;
	uint32_t caps;
	uint32_t flags;
	uint32_t mixers;
	int di_order;
	int di_mode;
	int monitoring_type;

	prev_ver = (uint32_t)FUNC8(source_data, "prev_ver");

	source = FUNC15(id, name, settings, hotkeys,
						prev_ver);

	FUNC11(hotkeys);

	caps = FUNC19(source);

	FUNC13(source_data, "volume", 1.0);
	volume = FUNC7(source_data, "volume");
	FUNC32(source, (float)volume);

	FUNC13(source_data, "balance", 0.5);
	balance = FUNC7(source_data, "balance");
	FUNC22(source, (float)balance);

	sync = FUNC8(source_data, "sync");
	FUNC31(source, sync);

	FUNC14(source_data, "mixers", 0x3F);
	mixers = (uint32_t)FUNC8(source_data, "mixers");
	FUNC21(source, mixers);

	FUNC14(source_data, "flags", source->default_flags);
	flags = (uint32_t)FUNC8(source_data, "flags");
	FUNC26(source, flags);

	FUNC12(source_data, "enabled", true);
	FUNC25(source,
			       FUNC6(source_data, "enabled"));

	FUNC12(source_data, "muted", false);
	FUNC28(source, FUNC6(source_data, "muted"));

	FUNC12(source_data, "push-to-mute", false);
	FUNC16(
		source, FUNC6(source_data, "push-to-mute"));

	FUNC14(source_data, "push-to-mute-delay", 0);
	FUNC29(
		source, FUNC8(source_data, "push-to-mute-delay"));

	FUNC12(source_data, "push-to-talk", false);
	FUNC17(
		source, FUNC6(source_data, "push-to-talk"));

	FUNC14(source_data, "push-to-talk-delay", 0);
	FUNC30(
		source, FUNC8(source_data, "push-to-talk-delay"));

	di_mode = (int)FUNC8(source_data, "deinterlace_mode");
	FUNC24(source,
					(enum obs_deinterlace_mode)di_mode);

	di_order =
		(int)FUNC8(source_data, "deinterlace_field_order");
	FUNC23(
		source, (enum obs_deinterlace_field_order)di_order);

	monitoring_type = (int)FUNC8(source_data, "monitoring_type");
	if (prev_ver < FUNC0(23, 2, 2)) {
		if ((caps & OBS_SOURCE_MONITOR_BY_DEFAULT) != 0) {
			/* updates older sources to enable monitoring
			 * automatically if they added monitoring by default in
			 * version 24 */
			monitoring_type = OBS_MONITORING_TYPE_MONITOR_ONLY;
			FUNC21(source, 0x3F);
		}
	}
	FUNC27(
		source, (enum obs_monitoring_type)monitoring_type);

	FUNC11(source->private_settings);
	source->private_settings =
		FUNC9(source_data, "private_settings");
	if (!source->private_settings)
		source->private_settings = FUNC4();

	if (filters) {
		size_t count = FUNC1(filters);

		for (size_t i = 0; i < count; i++) {
			obs_data_t *filter_data =
				FUNC2(filters, i);

			obs_source_t *filter =
				FUNC33(filter_data);
			if (filter) {
				FUNC18(source, filter);
				FUNC20(filter);
			}

			FUNC11(filter_data);
		}

		FUNC3(filters);
	}

	FUNC11(settings);

	return source;
}