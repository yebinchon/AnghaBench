
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_10__ {char* open_mode; int open_mode_len; char delimiter; char enclosure; } ;
struct TYPE_9__ {char* sub_path; int sub_path_len; int dirp; } ;
struct TYPE_11__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_13__ {int properties; } ;
struct TYPE_12__ {char* file_name; size_t file_name_len; scalar_t__ type; char* _path; int _path_len; TYPE_3__ u; TYPE_8__ std; } ;
typedef TYPE_4__ spl_filesystem_object ;
typedef int HashTable ;


 scalar_t__ SPL_FS_DIR ;
 scalar_t__ SPL_FS_FILE ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_FALSE (int *) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int php_glob_stream_ops ;
 scalar_t__ php_stream_is (int ,int *) ;
 int rebuild_object_properties (TYPE_8__*) ;
 int spl_ce_DirectoryIterator ;
 int spl_ce_RecursiveDirectoryIterator ;
 int spl_ce_SplFileInfo ;
 int spl_ce_SplFileObject ;
 TYPE_4__* spl_filesystem_from_obj (int *) ;
 int spl_filesystem_object_get_path (TYPE_4__*,size_t*) ;
 char* spl_filesystem_object_get_pathname (TYPE_4__*,size_t*) ;
 int * spl_gen_private_prop_name (int ,char*,int) ;
 int * zend_array_dup (int ) ;
 int zend_string_release_ex (int *,int ) ;
 int zend_symtable_update (int *,int *,int *) ;

__attribute__((used)) static HashTable *spl_filesystem_object_get_debug_info(zend_object *object, int *is_temp)
{
 spl_filesystem_object *intern = spl_filesystem_from_obj(object);
 zval tmp;
 HashTable *rv;
 zend_string *pnstr;
 char *path;
 size_t path_len;
 char stmp[2];

 *is_temp = 1;

 if (!intern->std.properties) {
  rebuild_object_properties(&intern->std);
 }

 rv = zend_array_dup(intern->std.properties);

 pnstr = spl_gen_private_prop_name(spl_ce_SplFileInfo, "pathName", sizeof("pathName")-1);
 path = spl_filesystem_object_get_pathname(intern, &path_len);
 ZVAL_STRINGL(&tmp, path ? path : "", path_len);
 zend_symtable_update(rv, pnstr, &tmp);
 zend_string_release_ex(pnstr, 0);

 if (intern->file_name) {
  pnstr = spl_gen_private_prop_name(spl_ce_SplFileInfo, "fileName", sizeof("fileName")-1);
  spl_filesystem_object_get_path(intern, &path_len);

  if (path_len && path_len < intern->file_name_len) {
   ZVAL_STRINGL(&tmp, intern->file_name + path_len + 1, intern->file_name_len - (path_len + 1));
  } else {
   ZVAL_STRINGL(&tmp, intern->file_name, intern->file_name_len);
  }
  zend_symtable_update(rv, pnstr, &tmp);
  zend_string_release_ex(pnstr, 0);
 }
 if (intern->type == SPL_FS_DIR) {
  pnstr = spl_gen_private_prop_name(spl_ce_RecursiveDirectoryIterator, "subPathName", sizeof("subPathName")-1);
  if (intern->u.dir.sub_path) {
   ZVAL_STRINGL(&tmp, intern->u.dir.sub_path, intern->u.dir.sub_path_len);
  } else {
   ZVAL_EMPTY_STRING(&tmp);
  }
  zend_symtable_update(rv, pnstr, &tmp);
  zend_string_release_ex(pnstr, 0);
 }
 if (intern->type == SPL_FS_FILE) {
  pnstr = spl_gen_private_prop_name(spl_ce_SplFileObject, "openMode", sizeof("openMode")-1);
  ZVAL_STRINGL(&tmp, intern->u.file.open_mode, intern->u.file.open_mode_len);
  zend_symtable_update(rv, pnstr, &tmp);
  zend_string_release_ex(pnstr, 0);
  stmp[1] = '\0';
  stmp[0] = intern->u.file.delimiter;
  pnstr = spl_gen_private_prop_name(spl_ce_SplFileObject, "delimiter", sizeof("delimiter")-1);
  ZVAL_STRINGL(&tmp, stmp, 1);
  zend_symtable_update(rv, pnstr, &tmp);
  zend_string_release_ex(pnstr, 0);
  stmp[0] = intern->u.file.enclosure;
  pnstr = spl_gen_private_prop_name(spl_ce_SplFileObject, "enclosure", sizeof("enclosure")-1);
  ZVAL_STRINGL(&tmp, stmp, 1);
  zend_symtable_update(rv, pnstr, &tmp);
  zend_string_release_ex(pnstr, 0);
 }

 return rv;
}
