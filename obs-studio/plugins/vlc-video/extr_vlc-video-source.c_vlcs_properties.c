
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; } ;
struct vlc_source {int mutex; TYPE_1__ files; } ;
struct media_file_data {int path; } ;
struct dstr {char const* array; int member_0; } ;
typedef int obs_property_t ;
typedef int obs_properties_t ;


 int EXTENSIONS_AUDIO ;
 int EXTENSIONS_MEDIA ;
 int EXTENSIONS_PLAYLIST ;
 int EXTENSIONS_VIDEO ;
 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int OBS_EDITABLE_LIST_TYPE_FILES_AND_URLS ;
 int OBS_PROPERTIES_DEFER_UPDATE ;
 int S_BEHAVIOR ;
 int S_BEHAVIOR_ALWAYS_PLAY ;
 int S_BEHAVIOR_PAUSE_UNPAUSE ;
 int S_BEHAVIOR_STOP_RESTART ;
 int S_LOOP ;
 int S_NETWORK_CACHING ;
 int S_PLAYLIST ;
 int S_SHUFFLE ;
 int S_SUBTITLE_ENABLE ;
 int S_SUBTITLE_TRACK ;
 int S_TRACK ;
 int T_BEHAVIOR ;
 int T_BEHAVIOR_ALWAYS_PLAY ;
 int T_BEHAVIOR_PAUSE_UNPAUSE ;
 int T_BEHAVIOR_STOP_RESTART ;
 int T_LOOP ;
 int T_NETWORK_CACHING ;
 int T_PLAYLIST ;
 int T_SHUFFLE ;
 int T_SUBTITLE_ENABLE ;
 int T_SUBTITLE_TRACK ;
 int T_TRACK ;
 struct media_file_data* da_end (TYPE_1__) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_cat_dstr (struct dstr*,struct dstr*) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int dstr_resize (struct dstr*,int) ;
 int obs_properties_add_bool (int *,int ,int ) ;
 int obs_properties_add_editable_list (int *,int ,int ,int ,char const*,char const*) ;
 int obs_properties_add_int (int *,int ,int ,int,int,int) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_properties_set_flags (int *,int ) ;
 int obs_property_list_add_string (int *,int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static obs_properties_t *vlcs_properties(void *data)
{
 obs_properties_t *ppts = obs_properties_create();
 struct vlc_source *c = data;
 struct dstr filter = {0};
 struct dstr exts = {0};
 struct dstr path = {0};
 obs_property_t *p;

 obs_properties_set_flags(ppts, OBS_PROPERTIES_DEFER_UPDATE);
 obs_properties_add_bool(ppts, S_LOOP, T_LOOP);
 obs_properties_add_bool(ppts, S_SHUFFLE, T_SHUFFLE);

 if (c) {
  pthread_mutex_lock(&c->mutex);
  if (c->files.num) {
   struct media_file_data *last = da_end(c->files);
   const char *slash;

   dstr_copy(&path, last->path);
   dstr_replace(&path, "\\", "/");
   slash = strrchr(path.array, '/');
   if (slash)
    dstr_resize(&path, slash - path.array + 1);
  }
  pthread_mutex_unlock(&c->mutex);
 }

 p = obs_properties_add_list(ppts, S_BEHAVIOR, T_BEHAVIOR,
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(p, T_BEHAVIOR_STOP_RESTART,
         S_BEHAVIOR_STOP_RESTART);
 obs_property_list_add_string(p, T_BEHAVIOR_PAUSE_UNPAUSE,
         S_BEHAVIOR_PAUSE_UNPAUSE);
 obs_property_list_add_string(p, T_BEHAVIOR_ALWAYS_PLAY,
         S_BEHAVIOR_ALWAYS_PLAY);

 dstr_cat(&filter, "Media Files (");
 dstr_copy(&exts, EXTENSIONS_MEDIA);
 dstr_replace(&exts, ";", " ");
 dstr_cat_dstr(&filter, &exts);

 dstr_cat(&filter, ");;Video Files (");
 dstr_copy(&exts, EXTENSIONS_VIDEO);
 dstr_replace(&exts, ";", " ");
 dstr_cat_dstr(&filter, &exts);

 dstr_cat(&filter, ");;Audio Files (");
 dstr_copy(&exts, EXTENSIONS_AUDIO);
 dstr_replace(&exts, ";", " ");
 dstr_cat_dstr(&filter, &exts);

 dstr_cat(&filter, ");;Playlist Files (");
 dstr_copy(&exts, EXTENSIONS_PLAYLIST);
 dstr_replace(&exts, ";", " ");
 dstr_cat_dstr(&filter, &exts);
 dstr_cat(&filter, ")");

 obs_properties_add_editable_list(ppts, S_PLAYLIST, T_PLAYLIST,
      OBS_EDITABLE_LIST_TYPE_FILES_AND_URLS,
      filter.array, path.array);
 dstr_free(&path);
 dstr_free(&filter);
 dstr_free(&exts);

 obs_properties_add_int(ppts, S_NETWORK_CACHING, T_NETWORK_CACHING, 100,
          60000, 10);
 obs_properties_add_int(ppts, S_TRACK, T_TRACK, 1, 10, 1);
 obs_properties_add_bool(ppts, S_SUBTITLE_ENABLE, T_SUBTITLE_ENABLE);
 obs_properties_add_int(ppts, S_SUBTITLE_TRACK, T_SUBTITLE_TRACK, 1, 10,
          1);

 return ppts;
}
