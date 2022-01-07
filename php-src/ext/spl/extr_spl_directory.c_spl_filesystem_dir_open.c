
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* d_name; } ;
struct TYPE_8__ {TYPE_1__ entry; int * dirp; scalar_t__ index; } ;
struct TYPE_9__ {TYPE_2__ dir; } ;
struct TYPE_10__ {int _path_len; TYPE_3__ u; void* _path; int type; int flags; } ;
typedef TYPE_4__ spl_filesystem_object ;


 scalar_t__ EG (int ) ;
 int FG (int ) ;
 scalar_t__ IS_SLASH_AT (char*,int) ;
 int REPORT_ERRORS ;
 int SPL_FILE_DIR_SKIPDOTS ;
 int SPL_FS_DIR ;
 int SPL_HAS_FLAG (int ,int ) ;
 int default_context ;
 void* estrndup (char*,int) ;
 int exception ;
 int * php_stream_opendir (char*,int ,int ) ;
 int spl_ce_UnexpectedValueException ;
 int spl_filesystem_dir_read (TYPE_4__*) ;
 scalar_t__ spl_filesystem_is_dot (char*) ;
 int strlen (char*) ;
 int zend_throw_exception_ex (int ,int ,char*,char*) ;

__attribute__((used)) static void spl_filesystem_dir_open(spl_filesystem_object* intern, char *path)
{
 int skip_dots = SPL_HAS_FLAG(intern->flags, SPL_FILE_DIR_SKIPDOTS);

 intern->type = SPL_FS_DIR;
 intern->_path_len = strlen(path);
 intern->u.dir.dirp = php_stream_opendir(path, REPORT_ERRORS, FG(default_context));

 if (intern->_path_len > 1 && IS_SLASH_AT(path, intern->_path_len-1)) {
  intern->_path = estrndup(path, --intern->_path_len);
 } else {
  intern->_path = estrndup(path, intern->_path_len);
 }
 intern->u.dir.index = 0;

 if (EG(exception) || intern->u.dir.dirp == ((void*)0)) {
  intern->u.dir.entry.d_name[0] = '\0';
  if (!EG(exception)) {

   zend_throw_exception_ex(spl_ce_UnexpectedValueException, 0,
    "Failed to open directory \"%s\"", path);
  }
 } else {
  do {
   spl_filesystem_dir_read(intern);
  } while (skip_dots && spl_filesystem_is_dot(intern->u.dir.entry.d_name));
 }
}
