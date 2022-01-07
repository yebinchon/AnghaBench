
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_object {int fd; } ;
typedef int * drmModePropertyBlobPtr ;


 int * drmModeGetPropertyBlob (int ,int ) ;
 int drm_object_get_property (struct drm_object*,char*,int *) ;

drmModePropertyBlobPtr drm_object_get_property_blob(struct drm_object *object, char *name)
{
   uint64_t blob_id;

   if (!drm_object_get_property(object, name, &blob_id)) {
       return drmModeGetPropertyBlob(object->fd, blob_id);
   }

   return ((void*)0);
}
