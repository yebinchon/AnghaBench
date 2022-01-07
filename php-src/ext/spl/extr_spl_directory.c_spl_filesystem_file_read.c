
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_6__ {char* current_line; scalar_t__ max_line_len; size_t current_line_len; int current_line_num; int stream; int current_zval; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {TYPE_2__ u; int flags; int file_name; } ;
typedef TYPE_3__ spl_filesystem_object ;


 int FAILURE ;
 int SPL_FILE_OBJECT_DROP_NEW_LINE ;
 scalar_t__ SPL_HAS_FLAG (int ,int ) ;
 int SUCCESS ;
 int Z_ISUNDEF (int ) ;
 int efree (char*) ;
 char* estrdup (char*) ;
 scalar_t__ php_stream_eof (int ) ;
 char* php_stream_get_line (int ,char*,scalar_t__,size_t*) ;
 char* safe_emalloc (scalar_t__,int,int ) ;
 int spl_ce_RuntimeException ;
 int spl_filesystem_file_free_line (TYPE_3__*) ;
 size_t strcspn (char*,char*) ;
 int zend_throw_exception_ex (int ,int ,char*,int ) ;

__attribute__((used)) static int spl_filesystem_file_read(spl_filesystem_object *intern, int silent)
{
 char *buf;
 size_t line_len = 0;
 zend_long line_add = (intern->u.file.current_line || !Z_ISUNDEF(intern->u.file.current_zval)) ? 1 : 0;

 spl_filesystem_file_free_line(intern);

 if (php_stream_eof(intern->u.file.stream)) {
  if (!silent) {
   zend_throw_exception_ex(spl_ce_RuntimeException, 0, "Cannot read from file %s", intern->file_name);
  }
  return FAILURE;
 }

 if (intern->u.file.max_line_len > 0) {
  buf = safe_emalloc((intern->u.file.max_line_len + 1), sizeof(char), 0);
  if (php_stream_get_line(intern->u.file.stream, buf, intern->u.file.max_line_len + 1, &line_len) == ((void*)0)) {
   efree(buf);
   buf = ((void*)0);
  } else {
   buf[line_len] = '\0';
  }
 } else {
  buf = php_stream_get_line(intern->u.file.stream, ((void*)0), 0, &line_len);
 }

 if (!buf) {
  intern->u.file.current_line = estrdup("");
  intern->u.file.current_line_len = 0;
 } else {
  if (SPL_HAS_FLAG(intern->flags, SPL_FILE_OBJECT_DROP_NEW_LINE)) {
   line_len = strcspn(buf, "\r\n");
   buf[line_len] = '\0';
  }

  intern->u.file.current_line = buf;
  intern->u.file.current_line_len = line_len;
 }
 intern->u.file.current_line_num += line_add;

 return SUCCESS;
}
