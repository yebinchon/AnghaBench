
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct zip_source {int dummy; } ;
struct zip {int dummy; } ;


 int FS_EXISTS ;
 scalar_t__ IS_FALSE ;
 int MAXPATHLEN ;
 int ZIP_FL_OVERWRITE ;
 scalar_t__ ZIP_OPENBASEDIR_CHECKPATH (char const*) ;
 scalar_t__ Z_TYPE (int ) ;
 int expand_filepath (char const*,char*) ;
 int php_stat (char*,int ,int ,int *) ;
 int strlen (char*) ;
 int zip_error_clear (struct zip*) ;
 scalar_t__ zip_file_add (struct zip*,char*,struct zip_source*,int ) ;
 struct zip_source* zip_source_file (struct zip*,char*,long,long) ;
 int zip_source_free (struct zip_source*) ;

__attribute__((used)) static int php_zip_add_file(struct zip *za, const char *filename, size_t filename_len,
 char *entry_name, size_t entry_name_len, long offset_start, long offset_len)
{
 struct zip_source *zs;
 char resolved_path[MAXPATHLEN];
 zval exists_flag;


 if (ZIP_OPENBASEDIR_CHECKPATH(filename)) {
  return -1;
 }

 if (!expand_filepath(filename, resolved_path)) {
  return -1;
 }

 php_stat(resolved_path, strlen(resolved_path), FS_EXISTS, &exists_flag);
 if (Z_TYPE(exists_flag) == IS_FALSE) {
  return -1;
 }

 zs = zip_source_file(za, resolved_path, offset_start, offset_len);
 if (!zs) {
  return -1;
 }
 if (zip_file_add(za, entry_name, zs, ZIP_FL_OVERWRITE) < 0) {
  zip_source_free(zs);
  return -1;
 } else {
  zip_error_clear(za);
  return 1;
 }
}
