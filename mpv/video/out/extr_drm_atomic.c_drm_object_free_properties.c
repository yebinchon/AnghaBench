
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_object {TYPE_1__* props; int ** props_info; } ;
struct TYPE_2__ {int count_props; } ;


 int drmModeFreeObjectProperties (TYPE_1__*) ;
 int drmModeFreeProperty (int *) ;
 int talloc_free (int **) ;

void drm_object_free_properties(struct drm_object *object)
{
    if (object->props) {
        for (int i = 0; i < object->props->count_props; i++) {
            if (object->props_info[i]) {
                drmModeFreeProperty(object->props_info[i]);
                object->props_info[i] = ((void*)0);
            }
        }

        talloc_free(object->props_info);
        object->props_info = ((void*)0);

        drmModeFreeObjectProperties(object->props);
        object->props = ((void*)0);
    }
}
