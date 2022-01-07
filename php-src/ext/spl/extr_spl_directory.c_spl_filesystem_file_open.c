
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_11__ {TYPE_3__* ce; } ;
struct TYPE_8__ {char* open_mode; int open_mode_len; char delimiter; char enclosure; unsigned char escape; int func_getCurr; TYPE_7__* stream; int zresource; int context; int zcontext; } ;
struct TYPE_9__ {TYPE_1__ file; } ;
struct TYPE_12__ {char* file_name; int file_name_len; TYPE_4__ std; TYPE_2__ u; void* orig_path; int type; } ;
typedef TYPE_5__ spl_filesystem_object ;
struct TYPE_13__ {char* orig_path; int res; } ;
struct TYPE_10__ {int function_table; } ;


 int EG (int ) ;
 int FAILURE ;
 int FS_IS_DIR ;
 scalar_t__ IS_SLASH_AT (char*,int) ;
 scalar_t__ IS_TRUE ;
 int REPORT_ERRORS ;
 int SPL_FS_FILE ;
 int SUCCESS ;
 int USE_PATH ;
 int ZVAL_RES (int *,int ) ;
 scalar_t__ Z_TYPE (int ) ;
 void* estrndup (char*,int) ;
 int exception ;
 int php_stat (char*,int,int ,int *) ;
 int php_stream_context_from_zval (int ,int ) ;
 TYPE_7__* php_stream_open_wrapper_ex (char*,char*,int,int *,int ) ;
 int spl_ce_LogicException ;
 int spl_ce_RuntimeException ;
 int strlen (char*) ;
 int zend_hash_str_find_ptr (int *,char*,int) ;
 int zend_throw_exception_ex (int ,int ,char*,...) ;

__attribute__((used)) static int spl_filesystem_file_open(spl_filesystem_object *intern, int use_include_path, int silent)
{
 zval tmp;

 intern->type = SPL_FS_FILE;

 php_stat(intern->file_name, intern->file_name_len, FS_IS_DIR, &tmp);
 if (Z_TYPE(tmp) == IS_TRUE) {
  intern->u.file.open_mode = ((void*)0);
  intern->file_name = ((void*)0);
  zend_throw_exception_ex(spl_ce_LogicException, 0, "Cannot use SplFileObject with directories");
  return FAILURE;
 }

 intern->u.file.context = php_stream_context_from_zval(intern->u.file.zcontext, 0);
 intern->u.file.stream = php_stream_open_wrapper_ex(intern->file_name, intern->u.file.open_mode, (use_include_path ? USE_PATH : 0) | REPORT_ERRORS, ((void*)0), intern->u.file.context);

 if (!intern->file_name_len || !intern->u.file.stream) {
  if (!EG(exception)) {
   zend_throw_exception_ex(spl_ce_RuntimeException, 0, "Cannot open file '%s'", intern->file_name_len ? intern->file_name : "");
  }
  intern->file_name = ((void*)0);
  intern->u.file.open_mode = ((void*)0);
  return FAILURE;
 }
 if (intern->file_name_len > 1 && IS_SLASH_AT(intern->file_name, intern->file_name_len-1)) {
  intern->file_name_len--;
 }

 intern->orig_path = estrndup(intern->u.file.stream->orig_path, strlen(intern->u.file.stream->orig_path));

 intern->file_name = estrndup(intern->file_name, intern->file_name_len);
 intern->u.file.open_mode = estrndup(intern->u.file.open_mode, intern->u.file.open_mode_len);


 ZVAL_RES(&intern->u.file.zresource, intern->u.file.stream->res);




 intern->u.file.delimiter = ',';
 intern->u.file.enclosure = '"';
 intern->u.file.escape = (unsigned char) '\\';

 intern->u.file.func_getCurr = zend_hash_str_find_ptr(&intern->std.ce->function_table, "getcurrentline", sizeof("getcurrentline") - 1);

 return SUCCESS;
}
