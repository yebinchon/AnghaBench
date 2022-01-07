
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_10__ {int file_name_len; int file_name; } ;
typedef TYPE_2__ spl_filesystem_object ;
struct TYPE_9__ {int data; } ;
struct TYPE_11__ {TYPE_1__ intern; int current; } ;
typedef TYPE_3__ spl_filesystem_iterator ;


 scalar_t__ SPL_FILE_DIR_CURRENT (TYPE_2__*,int ) ;
 int SPL_FILE_DIR_CURRENT_AS_FILEINFO ;
 int SPL_FILE_DIR_CURRENT_AS_PATHNAME ;
 int SPL_FS_INFO ;
 int ZVAL_STRINGL (int *,int ,int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 TYPE_2__* spl_filesystem_iterator_to_object (TYPE_3__*) ;
 int spl_filesystem_object_create_type (int ,TYPE_2__*,int ,int *,int *) ;
 int spl_filesystem_object_get_file_name (TYPE_2__*) ;

__attribute__((used)) static zval *spl_filesystem_tree_it_current_data(zend_object_iterator *iter)
{
 spl_filesystem_iterator *iterator = (spl_filesystem_iterator *)iter;
 spl_filesystem_object *object = spl_filesystem_iterator_to_object(iterator);

 if (SPL_FILE_DIR_CURRENT(object, SPL_FILE_DIR_CURRENT_AS_PATHNAME)) {
  if (Z_ISUNDEF(iterator->current)) {
   spl_filesystem_object_get_file_name(object);
   ZVAL_STRINGL(&iterator->current, object->file_name, object->file_name_len);
  }
  return &iterator->current;
 } else if (SPL_FILE_DIR_CURRENT(object, SPL_FILE_DIR_CURRENT_AS_FILEINFO)) {
  if (Z_ISUNDEF(iterator->current)) {
   spl_filesystem_object_get_file_name(object);
   spl_filesystem_object_create_type(0, object, SPL_FS_INFO, ((void*)0), &iterator->current);
  }
  return &iterator->current;
 } else {
  return &iterator->intern.data;
 }
}
