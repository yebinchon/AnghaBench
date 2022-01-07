
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct zip_stat {int dummy; } ;
struct zip_file {int dummy; } ;
struct zip {int dummy; } ;
typedef int php_stream_statbuf ;
typedef int php_stream ;
struct TYPE_3__ {char* cwd; scalar_t__ cwd_length; } ;
typedef TYPE_1__ cwd_state ;
typedef int b ;


 int CWD_EXPAND ;
 char* CWD_STATE_ALLOC (int) ;
 int CWD_STATE_FREE (char*) ;
 int E_WARNING ;
 scalar_t__ IS_SLASH (char) ;
 int MAXPATHLEN ;
 int PHP_STREAM_MKDIR_RECURSIVE ;
 int PHP_STREAM_URL_STAT_QUIET ;
 int REPORT_ERRORS ;
 scalar_t__ ZIP_OPENBASEDIR_CHECKPATH (char*) ;
 char* ZSTR_VAL (int *) ;
 int efree (char*) ;
 int memcpy (char*,char*,size_t) ;
 int * php_basename (char*,size_t,int *,int ) ;
 size_t php_dirname (char*,size_t) ;
 int php_error_docref (int *,int ,char*,int) ;
 int php_stream_close (int *) ;
 int php_stream_mkdir (char*,int,int,int *) ;
 int * php_stream_open_wrapper (char*,char*,int,int *) ;
 scalar_t__ php_stream_stat_path_ex (char*,int ,int *,int *) ;
 int php_stream_write (int *,char*,int) ;
 char* php_zip_make_relative_path (char*,scalar_t__) ;
 size_t spprintf (char**,int ,char*,char*,...) ;
 size_t strlen (char*) ;
 int virtual_file_ex (TYPE_1__*,char*,int *,int ) ;
 int zend_string_release_ex (int *,int ) ;
 int zip_fclose (struct zip_file*) ;
 struct zip_file* zip_fopen (struct zip*,char*,int ) ;
 int zip_fread (struct zip_file*,char*,int) ;
 scalar_t__ zip_stat (struct zip*,char*,int ,struct zip_stat*) ;

__attribute__((used)) static int php_zip_extract_file(struct zip * za, char *dest, char *file, size_t file_len)
{
 php_stream_statbuf ssb;
 struct zip_file *zf;
 struct zip_stat sb;
 char b[8192];
 int n, ret;
 php_stream *stream;
 char *fullpath;
 char *file_dirname_fullpath;
 char file_dirname[MAXPATHLEN];
 size_t dir_len, len;
 int is_dir_only = 0;
 char *path_cleaned;
 size_t path_cleaned_len;
 cwd_state new_state;
 zend_string *file_basename;

 new_state.cwd = CWD_STATE_ALLOC(1);
 new_state.cwd[0] = '\0';
 new_state.cwd_length = 0;




 virtual_file_ex(&new_state, file, ((void*)0), CWD_EXPAND);
 path_cleaned = php_zip_make_relative_path(new_state.cwd, new_state.cwd_length);
 if(!path_cleaned) {
  return 0;
 }
 path_cleaned_len = strlen(path_cleaned);

 if (path_cleaned_len >= MAXPATHLEN || zip_stat(za, file, 0, &sb) != 0) {
  return 0;
 }


 if (path_cleaned_len > 1 && IS_SLASH(path_cleaned[path_cleaned_len - 1])) {
  len = spprintf(&file_dirname_fullpath, 0, "%s/%s", dest, path_cleaned);
  is_dir_only = 1;
 } else {
  memcpy(file_dirname, path_cleaned, path_cleaned_len);
  dir_len = php_dirname(file_dirname, path_cleaned_len);

  if (!dir_len || (dir_len == 1 && file_dirname[0] == '.')) {
   len = spprintf(&file_dirname_fullpath, 0, "%s", dest);
  } else {
   len = spprintf(&file_dirname_fullpath, 0, "%s/%s", dest, file_dirname);
  }

  file_basename = php_basename(path_cleaned, path_cleaned_len, ((void*)0), 0);

  if (ZIP_OPENBASEDIR_CHECKPATH(file_dirname_fullpath)) {
   efree(file_dirname_fullpath);
   zend_string_release_ex(file_basename, 0);
   CWD_STATE_FREE(new_state.cwd);
   return 0;
  }
 }


 if (php_stream_stat_path_ex(file_dirname_fullpath, PHP_STREAM_URL_STAT_QUIET, &ssb, ((void*)0)) < 0) {
  ret = php_stream_mkdir(file_dirname_fullpath, 0777, PHP_STREAM_MKDIR_RECURSIVE|REPORT_ERRORS, ((void*)0));
  if (!ret) {
   efree(file_dirname_fullpath);
   if (!is_dir_only) {
    zend_string_release_ex(file_basename, 0);
    CWD_STATE_FREE(new_state.cwd);
   }
   return 0;
  }
 }


 if (is_dir_only) {
  efree(file_dirname_fullpath);
  CWD_STATE_FREE(new_state.cwd);
  return 1;
 }

 len = spprintf(&fullpath, 0, "%s/%s", file_dirname_fullpath, ZSTR_VAL(file_basename));
 if (!len) {
  efree(file_dirname_fullpath);
  zend_string_release_ex(file_basename, 0);
  CWD_STATE_FREE(new_state.cwd);
  return 0;
 } else if (len > MAXPATHLEN) {
  php_error_docref(((void*)0), E_WARNING, "Full extraction path exceed MAXPATHLEN (%i)", MAXPATHLEN);
  efree(file_dirname_fullpath);
  zend_string_release_ex(file_basename, 0);
  CWD_STATE_FREE(new_state.cwd);
  return 0;
 }





 if (ZIP_OPENBASEDIR_CHECKPATH(fullpath)) {
  efree(fullpath);
  efree(file_dirname_fullpath);
  zend_string_release_ex(file_basename, 0);
  CWD_STATE_FREE(new_state.cwd);
  return 0;
 }

 zf = zip_fopen(za, file, 0);
 if (zf == ((void*)0)) {
  n = -1;
  goto done;
 }

 stream = php_stream_open_wrapper(fullpath, "w+b", REPORT_ERRORS, ((void*)0));

 if (stream == ((void*)0)) {
  n = -1;
  zip_fclose(zf);
  goto done;
 }

 n = 0;

 while ((n=zip_fread(zf, b, sizeof(b))) > 0) {
  php_stream_write(stream, b, n);
 }

 php_stream_close(stream);
 n = zip_fclose(zf);

done:
 efree(fullpath);
 zend_string_release_ex(file_basename, 0);
 efree(file_dirname_fullpath);
 CWD_STATE_FREE(new_state.cwd);

 if (n<0) {
  return 0;
 } else {
  return 1;
 }
}
