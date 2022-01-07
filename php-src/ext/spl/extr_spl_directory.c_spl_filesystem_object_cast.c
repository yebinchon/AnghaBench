
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zval ;
struct TYPE_15__ {TYPE_1__* ce; } ;
typedef TYPE_5__ zend_object ;
struct TYPE_12__ {int d_name; } ;
struct TYPE_13__ {TYPE_2__ entry; } ;
struct TYPE_14__ {TYPE_3__ dir; } ;
struct TYPE_16__ {int type; TYPE_4__ u; int file_name_len; int file_name; } ;
typedef TYPE_6__ spl_filesystem_object ;
struct TYPE_11__ {scalar_t__ __tostring; } ;


 int FAILURE ;
 int IS_STRING ;



 int SUCCESS ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,int ) ;
 int ZVAL_STRINGL (int *,int ,int ) ;
 int ZVAL_TRUE (int *) ;
 int _IS_BOOL ;
 TYPE_6__* spl_filesystem_from_obj (TYPE_5__*) ;
 int zend_std_cast_object_tostring (TYPE_5__*,int *,int) ;

__attribute__((used)) static int spl_filesystem_object_cast(zend_object *readobj, zval *writeobj, int type)
{
 spl_filesystem_object *intern = spl_filesystem_from_obj(readobj);

 if (type == IS_STRING) {
  if (readobj->ce->__tostring) {
   return zend_std_cast_object_tostring(readobj, writeobj, type);
  }

  switch (intern->type) {
  case 128:
  case 129:
   ZVAL_STRINGL(writeobj, intern->file_name, intern->file_name_len);
   return SUCCESS;
  case 130:
   ZVAL_STRING(writeobj, intern->u.dir.entry.d_name);
   return SUCCESS;
  }
 } else if (type == _IS_BOOL) {
  ZVAL_TRUE(writeobj);
  return SUCCESS;
 }
 ZVAL_NULL(writeobj);
 return FAILURE;
}
