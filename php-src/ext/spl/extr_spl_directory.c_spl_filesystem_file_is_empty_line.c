
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef size_t uint32_t ;
struct TYPE_9__ {scalar_t__ current_line_len; int current_zval; scalar_t__ current_line; } ;
struct TYPE_10__ {TYPE_2__ file; } ;
struct TYPE_11__ {TYPE_3__ u; int flags; } ;
typedef TYPE_4__ spl_filesystem_object ;
struct TYPE_12__ {TYPE_1__* arData; } ;
struct TYPE_8__ {int val; } ;





 int SPL_FILE_OBJECT_READ_CSV ;
 int SPL_HAS_FLAG (int ,int ) ;
 TYPE_5__* Z_ARRVAL (int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 int Z_STRLEN (int ) ;
 int Z_STRLEN_P (int *) ;
 int Z_TYPE (int ) ;
 int const Z_TYPE_P (int *) ;
 int zend_hash_num_elements (TYPE_5__*) ;

__attribute__((used)) static int spl_filesystem_file_is_empty_line(spl_filesystem_object *intern)
{
 if (intern->u.file.current_line) {
  return intern->u.file.current_line_len == 0;
 } else if (!Z_ISUNDEF(intern->u.file.current_zval)) {
  switch(Z_TYPE(intern->u.file.current_zval)) {
   case 128:
    return Z_STRLEN(intern->u.file.current_zval) == 0;
   case 130:
    if (SPL_HAS_FLAG(intern->flags, SPL_FILE_OBJECT_READ_CSV)
      && zend_hash_num_elements(Z_ARRVAL(intern->u.file.current_zval)) == 1) {
     uint32_t idx = 0;
     zval *first;

     while (Z_ISUNDEF(Z_ARRVAL(intern->u.file.current_zval)->arData[idx].val)) {
      idx++;
     }
     first = &Z_ARRVAL(intern->u.file.current_zval)->arData[idx].val;
     return Z_TYPE_P(first) == 128 && Z_STRLEN_P(first) == 0;
    }
    return zend_hash_num_elements(Z_ARRVAL(intern->u.file.current_zval)) == 0;
   case 129:
    return 1;
   default:
    return 0;
  }
 } else {
  return 1;
 }
}
