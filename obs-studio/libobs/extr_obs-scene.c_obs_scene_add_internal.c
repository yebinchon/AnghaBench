
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct obs_scene_item {int ref; int align; int user_visible; int locked; int is_group; int visible; struct obs_scene_item* prev; struct obs_scene_item* next; int item_render; int audio_actions; int box_transform; int draw_transform; int scale; int active_refs; int toggle_visibility; int private_settings; int actions_mutex; TYPE_4__* parent; scalar_t__ id; TYPE_3__* source; } ;
struct item_action {int visible; int timestamp; } ;
typedef int pthread_mutex_t ;
struct TYPE_18__ {scalar_t__ id; } ;
struct TYPE_20__ {TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;
typedef struct obs_scene_item obs_sceneitem_t ;
struct TYPE_21__ {TYPE_9__* source; struct obs_scene_item* first_item; scalar_t__ id_counter; } ;
typedef TYPE_4__ obs_scene_t ;
struct TYPE_19__ {int private; } ;
struct TYPE_22__ {TYPE_2__ context; } ;
struct TYPE_17__ {scalar_t__ id; } ;


 int GS_RGBA ;
 int GS_ZS_NONE ;
 int LOG_ERROR ;
 int LOG_WARNING ;
 int OBS_ALIGN_LEFT ;
 int OBS_ALIGN_TOP ;
 int OBS_INVALID_HOTKEY_PAIR_ID ;
 int blog (int ,char*) ;
 struct obs_scene_item* bzalloc (int) ;
 int da_push_back (int ,struct item_action*) ;
 int full_lock (TYPE_4__*) ;
 int full_unlock (TYPE_4__*) ;
 TYPE_14__ group_info ;
 int gs_texrender_create (int ,int ) ;
 int init_hotkeys (TYPE_4__*,struct obs_scene_item*,int ) ;
 scalar_t__ item_texture_enabled (struct obs_scene_item*) ;
 int matrix4_identity (int *) ;
 int obs_data_create () ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_source_add_active_child (TYPE_9__*,TYPE_3__*) ;
 int obs_source_addref (TYPE_3__*) ;
 int obs_source_get_name (TYPE_3__*) ;
 int obs_source_get_signal_handler (TYPE_3__*) ;
 int os_atomic_set_long (int *,int) ;
 int os_gettime_ns () ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int sceneitem_renamed ;
 int signal_handler_connect (int ,char*,int ,struct obs_scene_item*) ;
 scalar_t__ source_has_audio (TYPE_3__*) ;
 int vec2_set (int *,float,float) ;

__attribute__((used)) static obs_sceneitem_t *obs_scene_add_internal(obs_scene_t *scene,
            obs_source_t *source,
            obs_sceneitem_t *insert_after)
{
 struct obs_scene_item *last;
 struct obs_scene_item *item;
 pthread_mutex_t mutex;

 struct item_action action = {.visible = 1,
         .timestamp = os_gettime_ns()};

 if (!scene)
  return ((void*)0);

 if (!source) {
  blog(LOG_ERROR, "Tried to add a NULL source to a scene");
  return ((void*)0);
 }

 if (pthread_mutex_init(&mutex, ((void*)0)) != 0) {
  blog(LOG_WARNING, "Failed to create scene item mutex");
  return ((void*)0);
 }

 if (!obs_source_add_active_child(scene->source, source)) {
  blog(LOG_WARNING, "Failed to add source to scene due to "
      "infinite source recursion");
  pthread_mutex_destroy(&mutex);
  return ((void*)0);
 }

 item = bzalloc(sizeof(struct obs_scene_item));
 item->source = source;
 item->id = ++scene->id_counter;
 item->parent = scene;
 item->ref = 1;
 item->align = OBS_ALIGN_TOP | OBS_ALIGN_LEFT;
 item->actions_mutex = mutex;
 item->user_visible = 1;
 item->locked = 0;
 item->is_group = source->info.id == group_info.id;
 item->private_settings = obs_data_create();
 item->toggle_visibility = OBS_INVALID_HOTKEY_PAIR_ID;
 os_atomic_set_long(&item->active_refs, 1);
 vec2_set(&item->scale, 1.0f, 1.0f);
 matrix4_identity(&item->draw_transform);
 matrix4_identity(&item->box_transform);

 obs_source_addref(source);

 if (source_has_audio(source)) {
  item->visible = 0;
  da_push_back(item->audio_actions, &action);
 } else {
  item->visible = 1;
 }

 if (item_texture_enabled(item)) {
  obs_enter_graphics();
  item->item_render = gs_texrender_create(GS_RGBA, GS_ZS_NONE);
  obs_leave_graphics();
 }

 full_lock(scene);

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

 full_unlock(scene);

 if (!scene->source->context.private)
  init_hotkeys(scene, item, obs_source_get_name(source));

 signal_handler_connect(obs_source_get_signal_handler(source), "rename",
          sceneitem_renamed, item);

 return item;
}
