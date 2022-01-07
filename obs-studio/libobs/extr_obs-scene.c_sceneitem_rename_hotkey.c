
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dstr {int array; int member_0; } ;
struct TYPE_6__ {int toggle_visibility; } ;
typedef TYPE_2__ obs_sceneitem_t ;
struct TYPE_5__ {char* sceneitem_show; char* sceneitem_hide; } ;
struct TYPE_7__ {TYPE_1__ hotkeys; } ;


 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char const*) ;
 TYPE_4__* obs ;
 int obs_hotkey_pair_set_descriptions (int ,int ,int ) ;
 int obs_hotkey_pair_set_names (int ,int ,int ) ;

__attribute__((used)) static void sceneitem_rename_hotkey(const obs_sceneitem_t *scene_item,
        const char *new_name)
{
 struct dstr show = {0};
 struct dstr hide = {0};
 struct dstr show_desc = {0};
 struct dstr hide_desc = {0};

 dstr_copy(&show, "libobs.show_scene_item.%1");
 dstr_replace(&show, "%1", new_name);
 dstr_copy(&hide, "libobs.hide_scene_item.%1");
 dstr_replace(&hide, "%1", new_name);

 obs_hotkey_pair_set_names(scene_item->toggle_visibility, show.array,
      hide.array);

 dstr_copy(&show_desc, obs->hotkeys.sceneitem_show);
 dstr_replace(&show_desc, "%1", new_name);
 dstr_copy(&hide_desc, obs->hotkeys.sceneitem_hide);
 dstr_replace(&hide_desc, "%1", new_name);

 obs_hotkey_pair_set_descriptions(scene_item->toggle_visibility,
      show_desc.array, hide_desc.array);

 dstr_free(&show);
 dstr_free(&hide);
 dstr_free(&show_desc);
 dstr_free(&hide_desc);
}
