
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_sceneitem_t ;
typedef int calldata_t ;


 char* calldata_string (int *,char*) ;
 int sceneitem_rename_hotkey (int *,char const*) ;

__attribute__((used)) static void sceneitem_renamed(void *param, calldata_t *data)
{
 obs_sceneitem_t *scene_item = param;
 const char *name = calldata_string(data, "new_name");

 sceneitem_rename_hotkey(scene_item, name);
}
