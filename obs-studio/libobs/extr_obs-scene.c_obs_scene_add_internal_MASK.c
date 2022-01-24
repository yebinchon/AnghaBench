#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
struct obs_scene_item {int ref; int align; int user_visible; int locked; int is_group; int visible; struct obs_scene_item* prev; struct obs_scene_item* next; int /*<<< orphan*/  item_render; int /*<<< orphan*/  audio_actions; int /*<<< orphan*/  box_transform; int /*<<< orphan*/  draw_transform; int /*<<< orphan*/  scale; int /*<<< orphan*/  active_refs; int /*<<< orphan*/  toggle_visibility; int /*<<< orphan*/  private_settings; int /*<<< orphan*/  actions_mutex; TYPE_4__* parent; scalar_t__ id; TYPE_3__* source; } ;
struct item_action {int visible; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_18__ {scalar_t__ id; } ;
struct TYPE_20__ {TYPE_1__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  struct obs_scene_item obs_sceneitem_t ;
struct TYPE_21__ {TYPE_9__* source; struct obs_scene_item* first_item; scalar_t__ id_counter; } ;
typedef  TYPE_4__ obs_scene_t ;
struct TYPE_19__ {int /*<<< orphan*/  private; } ;
struct TYPE_22__ {TYPE_2__ context; } ;
struct TYPE_17__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  GS_ZS_NONE ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int OBS_ALIGN_LEFT ; 
 int OBS_ALIGN_TOP ; 
 int /*<<< orphan*/  OBS_INVALID_HOTKEY_PAIR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct obs_scene_item* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct item_action*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_14__ group_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct obs_scene_item*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sceneitem_renamed ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct obs_scene_item*) ; 
 scalar_t__ FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,float,float) ; 

__attribute__((used)) static obs_sceneitem_t *FUNC23(obs_scene_t *scene,
					       obs_source_t *source,
					       obs_sceneitem_t *insert_after)
{
	struct obs_scene_item *last;
	struct obs_scene_item *item;
	pthread_mutex_t mutex;

	struct item_action action = {.visible = true,
				     .timestamp = FUNC17()};

	if (!scene)
		return NULL;

	if (!source) {
		FUNC0(LOG_ERROR, "Tried to add a NULL source to a scene");
		return NULL;
	}

	if (FUNC19(&mutex, NULL) != 0) {
		FUNC0(LOG_WARNING, "Failed to create scene item mutex");
		return NULL;
	}

	if (!FUNC12(scene->source, source)) {
		FUNC0(LOG_WARNING, "Failed to add source to scene due to "
				  "infinite source recursion");
		FUNC18(&mutex);
		return NULL;
	}

	item = FUNC1(sizeof(struct obs_scene_item));
	item->source = source;
	item->id = ++scene->id_counter;
	item->parent = scene;
	item->ref = 1;
	item->align = OBS_ALIGN_TOP | OBS_ALIGN_LEFT;
	item->actions_mutex = mutex;
	item->user_visible = true;
	item->locked = false;
	item->is_group = source->info.id == group_info.id;
	item->private_settings = FUNC9();
	item->toggle_visibility = OBS_INVALID_HOTKEY_PAIR_ID;
	FUNC16(&item->active_refs, 1);
	FUNC22(&item->scale, 1.0f, 1.0f);
	FUNC8(&item->draw_transform);
	FUNC8(&item->box_transform);

	FUNC13(source);

	if (FUNC21(source)) {
		item->visible = false;
		FUNC2(item->audio_actions, &action);
	} else {
		item->visible = true;
	}

	if (FUNC7(item)) {
		FUNC10();
		item->item_render = FUNC5(GS_RGBA, GS_ZS_NONE);
		FUNC11();
	}

	FUNC3(scene);

	if (insert_after) {
		obs_sceneitem_t *next = insert_after->next;
		if (next)
			next->prev = item;
		item->next = insert_after->next;
		item->prev = insert_after;
		insert_after->next = item;
	} else {
		last = scene->first_item;
		if (!last) {
			scene->first_item = item;
		} else {
			while (last->next)
				last = last->next;

			last->next = item;
			item->prev = last;
		}
	}

	FUNC4(scene);

	if (!scene->source->context.private)
		FUNC6(scene, item, FUNC14(source));

	FUNC20(FUNC15(source), "rename",
			       sceneitem_renamed, item);

	return item;
}