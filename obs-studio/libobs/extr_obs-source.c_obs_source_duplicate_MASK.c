#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int output_flags; scalar_t__ type; int /*<<< orphan*/  id; } ;
struct TYPE_15__ {int /*<<< orphan*/ * settings; } ;
struct TYPE_17__ {TYPE_2__ info; int /*<<< orphan*/ * private_settings; int /*<<< orphan*/  flags; int /*<<< orphan*/  muted; int /*<<< orphan*/  volume; int /*<<< orphan*/  user_muted; int /*<<< orphan*/  user_volume; int /*<<< orphan*/  sync_offset; int /*<<< orphan*/  audio_mixers; TYPE_1__ context; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_scene_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_SCENE_DUP_COPY ; 
 int /*<<< orphan*/  OBS_SCENE_DUP_PRIVATE_COPY ; 
 int OBS_SOURCE_DO_NOT_DUPLICATE ; 
 scalar_t__ OBS_SOURCE_TYPE_FILTER ; 
 scalar_t__ OBS_SOURCE_TYPE_SCENE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 

obs_source_t *FUNC12(obs_source_t *source, const char *new_name,
				   bool create_private)
{
	obs_source_t *new_source;
	obs_data_t *settings;

	if (!FUNC11(source, "obs_source_duplicate"))
		return NULL;

	if ((source->info.output_flags & OBS_SOURCE_DO_NOT_DUPLICATE) != 0) {
		FUNC8(source);
		return source;
	}

	if (source->info.type == OBS_SOURCE_TYPE_SCENE) {
		obs_scene_t *scene = FUNC6(source);
		if (!scene)
			scene = FUNC4(source);
		if (!scene)
			return NULL;

		obs_scene_t *new_scene = FUNC5(
			scene, new_name,
			create_private ? OBS_SCENE_DUP_PRIVATE_COPY
				       : OBS_SCENE_DUP_COPY);
		obs_source_t *new_source = FUNC7(new_scene);
		return new_source;
	}

	settings = FUNC2();
	FUNC1(settings, source->context.settings);

	new_source = create_private
			     ? FUNC10(source->info.id,
							 new_name, settings)
			     : FUNC9(source->info.id, new_name,
						 settings, NULL);

	new_source->audio_mixers = source->audio_mixers;
	new_source->sync_offset = source->sync_offset;
	new_source->user_volume = source->user_volume;
	new_source->user_muted = source->user_muted;
	new_source->volume = source->volume;
	new_source->muted = source->muted;
	new_source->flags = source->flags;

	FUNC1(new_source->private_settings, source->private_settings);

	if (source->info.type != OBS_SOURCE_TYPE_FILTER)
		FUNC0(new_source, source, create_private);

	FUNC3(settings);
	return new_source;
}