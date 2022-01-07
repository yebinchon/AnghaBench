
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dstr {int array; int member_0; } ;
struct TYPE_10__ {int toggle_visibility; } ;
typedef TYPE_2__ obs_sceneitem_t ;
struct TYPE_11__ {int source; } ;
typedef TYPE_3__ obs_scene_t ;
struct TYPE_9__ {char* sceneitem_show; char* sceneitem_hide; } ;
struct TYPE_12__ {TYPE_1__ hotkeys; } ;


 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char const*) ;
 int hotkey_hide_sceneitem ;
 int hotkey_show_sceneitem ;
 TYPE_6__* obs ;
 int obs_hotkey_pair_register_source (int ,int ,int ,int ,int ,int ,int ,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void init_hotkeys(obs_scene_t *scene, obs_sceneitem_t *item,
    const char *name)
{
 struct dstr show = {0};
 struct dstr hide = {0};
 struct dstr show_desc = {0};
 struct dstr hide_desc = {0};

 dstr_copy(&show, "libobs.show_scene_item.%1");
 dstr_replace(&show, "%1", name);
 dstr_copy(&hide, "libobs.hide_scene_item.%1");
 dstr_replace(&hide, "%1", name);

 dstr_copy(&show_desc, obs->hotkeys.sceneitem_show);
 dstr_replace(&show_desc, "%1", name);
 dstr_copy(&hide_desc, obs->hotkeys.sceneitem_hide);
 dstr_replace(&hide_desc, "%1", name);

 item->toggle_visibility = obs_hotkey_pair_register_source(
  scene->source, show.array, show_desc.array, hide.array,
  hide_desc.array, hotkey_show_sceneitem, hotkey_hide_sceneitem,
  item, item);

 dstr_free(&show);
 dstr_free(&hide);
 dstr_free(&show_desc);
 dstr_free(&hide_desc);
}
