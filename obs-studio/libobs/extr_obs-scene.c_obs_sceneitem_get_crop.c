
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct obs_sceneitem_crop {int crop; } const obs_sceneitem_crop ;
typedef struct obs_sceneitem_crop obs_sceneitem_t ;


 int memcpy (struct obs_sceneitem_crop const*,int *,int) ;
 int obs_ptr_valid (struct obs_sceneitem_crop const*,char*) ;

void obs_sceneitem_get_crop(const obs_sceneitem_t *item,
       struct obs_sceneitem_crop *crop)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_get_crop"))
  return;
 if (!obs_ptr_valid(crop, "obs_sceneitem_get_crop"))
  return;

 memcpy(crop, &item->crop, sizeof(*crop));
}
