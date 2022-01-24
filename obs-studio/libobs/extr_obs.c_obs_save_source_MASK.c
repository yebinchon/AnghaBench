#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_28__ {size_t num; TYPE_4__** array; } ;
struct TYPE_27__ {scalar_t__ type; } ;
struct TYPE_26__ {int /*<<< orphan*/ * hotkey_data; } ;
struct TYPE_29__ {int /*<<< orphan*/  filter_mutex; TYPE_3__ filters; TYPE_2__ info; int /*<<< orphan*/ * private_settings; TYPE_1__ context; } ;
typedef  TYPE_4__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
typedef  int int64_t ;

/* Variables and functions */
 int LIBOBS_API_VER ; 
 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*) ; 
 int FUNC13 (TYPE_4__*) ; 
 float FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 int FUNC17 (TYPE_4__*) ; 
 char* FUNC18 (TYPE_4__*) ; 
 scalar_t__ FUNC19 (TYPE_4__*) ; 
 char* FUNC20 (TYPE_4__*) ; 
 int FUNC21 (TYPE_4__*) ; 
 int FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_4__*) ; 
 int FUNC24 (TYPE_4__*) ; 
 float FUNC25 (TYPE_4__*) ; 
 int FUNC26 (TYPE_4__*) ; 
 int FUNC27 (TYPE_4__*) ; 
 int FUNC28 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

obs_data_t *FUNC33(obs_source_t *source)
{
	obs_data_array_t *filters = FUNC0();
	obs_data_t *source_data = FUNC3();
	obs_data_t *settings = FUNC23(source);
	obs_data_t *hotkey_data = source->context.hotkey_data;
	obs_data_t *hotkeys;
	float volume = FUNC25(source);
	float balance = FUNC14(source);
	uint32_t mixers = FUNC13(source);
	int64_t sync = FUNC24(source);
	uint32_t flags = FUNC17(source);
	const char *name = FUNC20(source);
	const char *id = FUNC18(source);
	bool enabled = FUNC12(source);
	bool muted = FUNC26(source);
	bool push_to_mute = FUNC27(source);
	uint64_t ptm_delay = FUNC21(source);
	bool push_to_talk = FUNC28(source);
	uint64_t ptt_delay = FUNC22(source);
	int m_type = (int)FUNC19(source);
	int di_mode = (int)FUNC16(source);
	int di_order = (int)FUNC15(source);

	FUNC29(source);
	hotkeys = FUNC11(source);

	if (hotkeys) {
		FUNC4(hotkey_data);
		source->context.hotkey_data = hotkeys;
		hotkey_data = hotkeys;
	}

	FUNC8(source_data, "prev_ver", LIBOBS_API_VER);

	FUNC10(source_data, "name", name);
	FUNC10(source_data, "id", id);
	FUNC9(source_data, "settings", settings);
	FUNC8(source_data, "mixers", mixers);
	FUNC8(source_data, "sync", sync);
	FUNC8(source_data, "flags", flags);
	FUNC7(source_data, "volume", volume);
	FUNC7(source_data, "balance", balance);
	FUNC6(source_data, "enabled", enabled);
	FUNC6(source_data, "muted", muted);
	FUNC6(source_data, "push-to-mute", push_to_mute);
	FUNC8(source_data, "push-to-mute-delay", ptm_delay);
	FUNC6(source_data, "push-to-talk", push_to_talk);
	FUNC8(source_data, "push-to-talk-delay", ptt_delay);
	FUNC9(source_data, "hotkeys", hotkey_data);
	FUNC8(source_data, "deinterlace_mode", di_mode);
	FUNC8(source_data, "deinterlace_field_order", di_order);
	FUNC8(source_data, "monitoring_type", m_type);

	FUNC9(source_data, "private_settings",
			 source->private_settings);

	if (source->info.type == OBS_SOURCE_TYPE_TRANSITION)
		FUNC30(source, source_data);

	FUNC31(&source->filter_mutex);

	if (source->filters.num) {
		for (size_t i = source->filters.num; i > 0; i--) {
			obs_source_t *filter = source->filters.array[i - 1];
			obs_data_t *filter_data = FUNC33(filter);
			FUNC1(filters, filter_data);
			FUNC4(filter_data);
		}

		FUNC5(source_data, "filters", filters);
	}

	FUNC32(&source->filter_mutex);

	FUNC4(settings);
	FUNC2(filters);

	return source_data;
}