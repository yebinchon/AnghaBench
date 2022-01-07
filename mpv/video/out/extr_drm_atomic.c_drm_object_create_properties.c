
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct drm_object {int id; TYPE_1__* props; int * props_info; int type; } ;
struct TYPE_2__ {int count_props; int * props; } ;


 int drmModeGetProperty (int,int ) ;
 TYPE_1__* drmModeObjectGetProperties (int,int ,int ) ;
 int drm_object_free_properties (struct drm_object*) ;
 int mp_err (struct mp_log*,char*,...) ;
 int * talloc_zero_size (int *,int) ;

int drm_object_create_properties(struct mp_log *log, int fd,
                                 struct drm_object *object)
{
    object->props = drmModeObjectGetProperties(fd, object->id, object->type);
    if (object->props) {
        object->props_info = talloc_zero_size(((void*)0), object->props->count_props
                                              * sizeof(object->props_info));
        if (object->props_info) {
            for (int i = 0; i < object->props->count_props; i++)
                object->props_info[i] = drmModeGetProperty(fd, object->props->props[i]);
        } else {
            mp_err(log, "Out of memory\n");
            goto fail;
        }
    } else {
        mp_err(log, "Failed to retrieve properties for object id %d\n", object->id);
        goto fail;
    }

    return 0;

  fail:
    drm_object_free_properties(object);
    return -1;
}
