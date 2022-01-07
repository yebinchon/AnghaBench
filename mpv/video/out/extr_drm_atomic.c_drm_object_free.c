
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_object {int dummy; } ;


 int drm_object_free_properties (struct drm_object*) ;
 int talloc_free (struct drm_object*) ;

void drm_object_free(struct drm_object *object)
{
    if (object) {
        drm_object_free_properties(object);
        talloc_free(object);
    }
}
