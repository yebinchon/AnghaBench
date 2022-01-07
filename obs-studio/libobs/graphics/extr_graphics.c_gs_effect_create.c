
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_effect {int cached; struct gs_effect* next; scalar_t__ effect_path; TYPE_2__* graphics; } ;
struct TYPE_3__ {int error_list; } ;
struct effect_parser {TYPE_1__ cfp; } ;
typedef struct gs_effect gs_effect_t ;
struct TYPE_4__ {int effect_mutex; struct gs_effect* first_effect; } ;


 scalar_t__ bstrdup (char const*) ;
 struct gs_effect* bzalloc (int) ;
 int ep_free (struct effect_parser*) ;
 int ep_init (struct effect_parser*) ;
 int ep_parse (struct effect_parser*,struct gs_effect*,char const*,char const*) ;
 char* error_data_buildstring (int *) ;
 int gs_effect_destroy (struct gs_effect*) ;
 int gs_valid_p (char*,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__* thread_graphics ;

gs_effect_t *gs_effect_create(const char *effect_string, const char *filename,
         char **error_string)
{
 if (!gs_valid_p("gs_effect_create", effect_string))
  return ((void*)0);

 struct gs_effect *effect = bzalloc(sizeof(struct gs_effect));
 struct effect_parser parser;
 bool success;

 effect->graphics = thread_graphics;
 effect->effect_path = bstrdup(filename);

 ep_init(&parser);
 success = ep_parse(&parser, effect, effect_string, filename);
 if (!success) {
  if (error_string)
   *error_string =
    error_data_buildstring(&parser.cfp.error_list);
  gs_effect_destroy(effect);
  effect = ((void*)0);
 }

 if (effect) {
  pthread_mutex_lock(&thread_graphics->effect_mutex);

  if (effect->effect_path) {
   effect->cached = 1;
   effect->next = thread_graphics->first_effect;
   thread_graphics->first_effect = effect;
  }

  pthread_mutex_unlock(&thread_graphics->effect_mutex);
 }

 ep_free(&parser);
 return effect;
}
