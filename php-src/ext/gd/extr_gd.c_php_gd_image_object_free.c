
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int * image; } ;
typedef TYPE_1__ php_gd_image_object ;


 int gdImageDestroy (int *) ;
 TYPE_1__* php_gd_exgdimage_from_zobj_p (int *) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void php_gd_image_object_free(zend_object *intern)
{
 php_gd_image_object *img_obj_ptr = php_gd_exgdimage_from_zobj_p(intern);
 gdImageDestroy(img_obj_ptr->image);
 img_obj_ptr->image = ((void*)0);

 zend_object_std_dtor(intern);
}
