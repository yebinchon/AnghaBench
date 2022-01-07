
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {size_t current_line_len; int current_zval; int stream; int current_line; } ;
struct TYPE_7__ {TYPE_1__ file; } ;
struct TYPE_8__ {TYPE_2__ u; int flags; } ;
typedef TYPE_3__ spl_filesystem_object ;


 int SPL_FILE_OBJECT_SKIP_EMPTY ;
 scalar_t__ SPL_HAS_FLAG (int ,int ) ;
 int SUCCESS ;
 int ZVAL_COPY_DEREF (int *,int *) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 char* estrndup (int ,size_t) ;
 int php_fgetcsv (int ,char,char,int,size_t,char*,int *) ;
 int spl_filesystem_file_read (TYPE_3__*,int) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_filesystem_file_read_csv(spl_filesystem_object *intern, char delimiter, char enclosure, int escape, zval *return_value)
{
 int ret = SUCCESS;
 zval *value;

 do {
  ret = spl_filesystem_file_read(intern, 1);
 } while (ret == SUCCESS && !intern->u.file.current_line_len && SPL_HAS_FLAG(intern->flags, SPL_FILE_OBJECT_SKIP_EMPTY));

 if (ret == SUCCESS) {
  size_t buf_len = intern->u.file.current_line_len;
  char *buf = estrndup(intern->u.file.current_line, buf_len);

  if (!Z_ISUNDEF(intern->u.file.current_zval)) {
   zval_ptr_dtor(&intern->u.file.current_zval);
   ZVAL_UNDEF(&intern->u.file.current_zval);
  }

  php_fgetcsv(intern->u.file.stream, delimiter, enclosure, escape, buf_len, buf, &intern->u.file.current_zval);
  if (return_value) {
   value = &intern->u.file.current_zval;
   ZVAL_COPY_DEREF(return_value, value);
  }
 }
 return ret;
}
