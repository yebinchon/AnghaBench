
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {TYPE_1__* ce; } ;
typedef TYPE_2__ zend_object ;
struct TYPE_7__ {int type; } ;
typedef TYPE_3__ zend_ffi_cdata ;
struct TYPE_5__ {int name; } ;


 int ZEND_FFI_TYPE (int ) ;
 int * zend_ffi_get_class_name (int ,int ) ;

__attribute__((used)) static zend_string *zend_ffi_cdata_get_class_name(const zend_object *zobj)
{
 zend_ffi_cdata *cdata = (zend_ffi_cdata*)zobj;

 return zend_ffi_get_class_name(zobj->ce->name, ZEND_FFI_TYPE(cdata->type));
}
