
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {scalar_t__ current_line_num; int stream; } ;
struct TYPE_8__ {TYPE_1__ file; } ;
struct TYPE_9__ {int flags; TYPE_2__ u; int file_name; } ;
typedef TYPE_3__ spl_filesystem_object ;


 int SPL_FILE_OBJECT_READ_AHEAD ;
 scalar_t__ SPL_HAS_FLAG (int ,int ) ;
 int php_stream_rewind (int ) ;
 int spl_ce_RuntimeException ;
 int spl_filesystem_file_free_line (TYPE_3__*) ;
 int spl_filesystem_file_read_line (int *,TYPE_3__*,int) ;
 int zend_throw_exception_ex (int ,int ,char*,...) ;

__attribute__((used)) static void spl_filesystem_file_rewind(zval * this_ptr, spl_filesystem_object *intern)
{
 if(!intern->u.file.stream) {
  zend_throw_exception_ex(spl_ce_RuntimeException, 0, "Object not initialized");
  return;
 }
 if (-1 == php_stream_rewind(intern->u.file.stream)) {
  zend_throw_exception_ex(spl_ce_RuntimeException, 0, "Cannot rewind file %s", intern->file_name);
 } else {
  spl_filesystem_file_free_line(intern);
  intern->u.file.current_line_num = 0;
 }
 if (SPL_HAS_FLAG(intern->flags, SPL_FILE_OBJECT_READ_AHEAD)) {
  spl_filesystem_file_read_line(this_ptr, intern, 1);
 }
}
