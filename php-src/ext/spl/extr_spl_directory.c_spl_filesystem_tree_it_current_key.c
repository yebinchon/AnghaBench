
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_8__ {int d_name; } ;
struct TYPE_9__ {TYPE_1__ entry; } ;
struct TYPE_10__ {TYPE_2__ dir; } ;
struct TYPE_11__ {int file_name_len; int file_name; TYPE_3__ u; } ;
typedef TYPE_4__ spl_filesystem_object ;
typedef int spl_filesystem_iterator ;


 scalar_t__ SPL_FILE_DIR_KEY (TYPE_4__*,int ) ;
 int SPL_FILE_DIR_KEY_AS_FILENAME ;
 int ZVAL_STRING (int *,int ) ;
 int ZVAL_STRINGL (int *,int ,int ) ;
 TYPE_4__* spl_filesystem_iterator_to_object (int *) ;
 int spl_filesystem_object_get_file_name (TYPE_4__*) ;

__attribute__((used)) static void spl_filesystem_tree_it_current_key(zend_object_iterator *iter, zval *key)
{
 spl_filesystem_object *object = spl_filesystem_iterator_to_object((spl_filesystem_iterator *)iter);

 if (SPL_FILE_DIR_KEY(object, SPL_FILE_DIR_KEY_AS_FILENAME)) {
  ZVAL_STRING(key, object->u.dir.entry.d_name);
 } else {
  spl_filesystem_object_get_file_name(object);
  ZVAL_STRINGL(key, object->file_name, object->file_name_len);
 }
}
