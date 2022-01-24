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
typedef  int /*<<< orphan*/  uint32_t ;
struct obs_source_info {scalar_t__ type; int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ ,struct obs_source*) ;int /*<<< orphan*/  type_data; int /*<<< orphan*/  (* get_defaults2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_defaults ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  settings; } ;
struct obs_source {int owns_info_id; int enabled; int /*<<< orphan*/  default_flags; int /*<<< orphan*/  flags; TYPE_1__ context; int /*<<< orphan*/  last_obs_ver; void* push_to_talk_key; void* push_to_mute_key; int /*<<< orphan*/  mute_unmute_key; struct obs_source_info info; } ;
typedef  struct obs_source obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 void* OBS_INVALID_HOTKEY_ID ; 
 int /*<<< orphan*/  OBS_INVALID_HOTKEY_PAIR_ID ; 
 scalar_t__ OBS_SOURCE_TYPE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct obs_source* FUNC2 (int) ; 
 struct obs_source_info* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_source*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC7 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC8 (struct obs_source*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct obs_source*) ; 

__attribute__((used)) static obs_source_t *
FUNC13(const char *id, const char *name,
			   obs_data_t *settings, obs_data_t *hotkey_data,
			   bool private, uint32_t last_obs_ver)
{
	struct obs_source *source = FUNC2(sizeof(struct obs_source));

	const struct obs_source_info *info = FUNC3(id);
	if (!info) {
		FUNC0(LOG_ERROR, "Source ID '%s' not found", id);

		source->info.id = FUNC1(id);
		source->owns_info_id = true;
	} else {
		source->info = *info;

		/* Always mark filters as private so they aren't found by
		 * source enum/search functions.
		 *
		 * XXX: Fix design flaws with filters */
		if (info->type == OBS_SOURCE_TYPE_FILTER)
		private
		= true;
	}

	source->mute_unmute_key = OBS_INVALID_HOTKEY_PAIR_ID;
	source->push_to_mute_key = OBS_INVALID_HOTKEY_ID;
	source->push_to_talk_key = OBS_INVALID_HOTKEY_ID;
	source->last_obs_ver = last_obs_ver;

	if (!FUNC8(source, settings, name, hotkey_data,
				     private))
		goto fail;

	if (info) {
		if (info->get_defaults) {
			info->get_defaults(source->context.settings);
		}
		if (info->get_defaults2) {
			info->get_defaults2(info->type_data,
					    source->context.settings);
		}
	}

	if (!FUNC6(source))
		goto fail;

	if (!private)
		FUNC7(source);

	/* allow the source to be created even if creation fails so that the
	 * user's data doesn't become lost */
	if (info && info->create)
		source->context.data =
			info->create(source->context.settings, source);
	if ((!info || info->create) && !source->context.data)
		FUNC0(LOG_ERROR, "Failed to create source '%s'!", name);

	FUNC0(LOG_DEBUG, "%ssource '%s' (%s) created", private ? "private " : "",
	     name, id);

	source->flags = source->default_flags;
	source->enabled = true;

	if (!private) {
		FUNC5(source, "source_create", NULL);
	}

	FUNC9(source);
	return source;

fail:
	FUNC0(LOG_ERROR, "obs_source_create failed");
	FUNC4(source);
	return NULL;
}