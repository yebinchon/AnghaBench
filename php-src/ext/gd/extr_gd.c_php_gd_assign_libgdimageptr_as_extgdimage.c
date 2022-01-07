
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int gdImagePtr ;
struct TYPE_2__ {int image; } ;


 int Z_OBJ_P (int *) ;
 int gd_image_ce ;
 int object_init_ex (int *,int ) ;
 TYPE_1__* php_gd_exgdimage_from_zobj_p (int ) ;

void php_gd_assign_libgdimageptr_as_extgdimage(zval *val, gdImagePtr image)
{
 object_init_ex(val, gd_image_ce);
 php_gd_exgdimage_from_zobj_p(Z_OBJ_P(val))->image = image;
}
