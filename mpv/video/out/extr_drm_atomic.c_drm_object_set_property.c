
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_object {TYPE_2__** props_info; int id; TYPE_1__* props; } ;
typedef int drmModeAtomicReq ;
struct TYPE_4__ {int prop_id; int name; } ;
struct TYPE_3__ {int count_props; } ;


 int EINVAL ;
 int drmModeAtomicAddProperty (int *,int ,int ,int ) ;
 scalar_t__ strcasecmp (char*,int ) ;

int drm_object_set_property(drmModeAtomicReq *request, struct drm_object *object,
                            char *name, uint64_t value)
{
   for (int i = 0; i < object->props->count_props; i++) {
       if (strcasecmp(name, object->props_info[i]->name) == 0) {
           return drmModeAtomicAddProperty(request, object->id,
                                           object->props_info[i]->prop_id, value);
       }
   }

   return -EINVAL;
}
