
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_off_t ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
typedef int HashTable ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ SUCCESS ;
 int zend_hash_internal_pointer_reset (int *) ;
 scalar_t__ zend_hash_move_forward (int *) ;
 scalar_t__ zend_hash_num_elements (int *) ;

__attribute__((used)) static int phar_dir_seek(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffset)
{
 HashTable *data = (HashTable *)stream->abstract;

 if (!data) {
  return -1;
 }

 if (whence == SEEK_END) {
  whence = SEEK_SET;
  offset = zend_hash_num_elements(data) + offset;
 }

 if (whence == SEEK_SET) {
  zend_hash_internal_pointer_reset(data);
 }

 if (offset < 0) {
  return -1;
 } else {
  *newoffset = 0;
  while (*newoffset < offset && zend_hash_move_forward(data) == SUCCESS) {
   ++(*newoffset);
  }
  return 0;
 }
}
