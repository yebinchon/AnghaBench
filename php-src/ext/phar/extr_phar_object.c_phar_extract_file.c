
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_bool ;
typedef int php_stream_statbuf ;
typedef int php_stream ;
struct TYPE_8__ {int filename_len; char* filename; int flags; int uncompressed_filesize; scalar_t__ is_dir; scalar_t__ is_mounted; } ;
typedef TYPE_1__ phar_entry_info ;
typedef int mode_t ;
struct TYPE_9__ {char* cwd; int cwd_length; } ;
typedef TYPE_2__ cwd_state ;


 int CWD_EXPAND ;
 char DEFAULT_SLASH ;
 scalar_t__ EINVAL ;
 int FAILURE ;
 size_t MAXPATHLEN ;
 int PHAR_ENT_PERM_MASK ;
 int PHP_STREAM_MKDIR_RECURSIVE ;
 int REPORT_ERRORS ;
 int SEEK_SET ;
 int SUCCESS ;
 int VCWD_CHMOD (char*,int) ;
 int efree (char*) ;
 scalar_t__ emalloc (int) ;
 scalar_t__ errno ;
 char* estrndup (char*,int) ;
 int memcmp (char*,char*,int) ;
 int phar_get_efp (TYPE_1__*,int ) ;
 int phar_open_entry_fp (TYPE_1__*,char**,int) ;
 int phar_seek_efp (TYPE_1__*,int ,int ,int ,int ) ;
 scalar_t__ php_check_open_basedir (char*) ;
 int php_stream_close (int *) ;
 int php_stream_copy_to_stream_ex (int ,int *,int ,int *) ;
 int php_stream_mkdir (char*,int,int ,int *) ;
 int * php_stream_open_wrapper (char*,char*,int ,int *) ;
 int php_stream_stat_path (char*,int *) ;
 size_t spprintf (char**,int,char*,char*,...) ;
 scalar_t__ virtual_file_ex (TYPE_2__*,char*,int *,int ) ;
 char* zend_memrchr (char*,char,size_t) ;

__attribute__((used)) static int phar_extract_file(zend_bool overwrite, phar_entry_info *entry, char *dest, size_t dest_len, char **error)
{
 php_stream_statbuf ssb;
 size_t len;
 php_stream *fp;
 char *fullpath;
 const char *slash;
 mode_t mode;
 cwd_state new_state;
 char *filename;
 size_t filename_len;

 if (entry->is_mounted) {

  return SUCCESS;
 }

 if (entry->filename_len >= sizeof(".phar")-1 && !memcmp(entry->filename, ".phar", sizeof(".phar")-1)) {
  return SUCCESS;
 }

 new_state.cwd = (char*)emalloc(2);
 new_state.cwd[0] = DEFAULT_SLASH;
 new_state.cwd[1] = '\0';
 new_state.cwd_length = 1;
 if (virtual_file_ex(&new_state, entry->filename, ((void*)0), CWD_EXPAND) != 0 ||
   new_state.cwd_length <= 1) {
  if (EINVAL == errno && entry->filename_len > 50) {
   char *tmp = estrndup(entry->filename, 50);
   spprintf(error, 4096, "Cannot extract \"%s...\" to \"%s...\", extracted filename is too long for filesystem", tmp, dest);
   efree(tmp);
  } else {
   spprintf(error, 4096, "Cannot extract \"%s\", internal error", entry->filename);
  }
  efree(new_state.cwd);
  return FAILURE;
 }
 filename = new_state.cwd + 1;
 filename_len = new_state.cwd_length - 1;
 len = spprintf(&fullpath, 0, "%s/%s", dest, filename);

 if (len >= MAXPATHLEN) {
  char *tmp;

  fullpath[50] = '\0';
  if (entry->filename_len > 50) {
   tmp = estrndup(entry->filename, 50);
   spprintf(error, 4096, "Cannot extract \"%s...\" to \"%s...\", extracted filename is too long for filesystem", tmp, fullpath);
   efree(tmp);
  } else {
   spprintf(error, 4096, "Cannot extract \"%s\" to \"%s...\", extracted filename is too long for filesystem", entry->filename, fullpath);
  }
  efree(fullpath);
  efree(new_state.cwd);
  return FAILURE;
 }

 if (!len) {
  spprintf(error, 4096, "Cannot extract \"%s\", internal error", entry->filename);
  efree(fullpath);
  efree(new_state.cwd);
  return FAILURE;
 }

 if (php_check_open_basedir(fullpath)) {
  spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", openbasedir/safe mode restrictions in effect", entry->filename, fullpath);
  efree(fullpath);
  efree(new_state.cwd);
  return FAILURE;
 }


 if (!overwrite && SUCCESS == php_stream_stat_path(fullpath, &ssb)) {
  spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", path already exists", entry->filename, fullpath);
  efree(fullpath);
  efree(new_state.cwd);
  return FAILURE;
 }


 slash = zend_memrchr(filename, '/', filename_len);

 if (slash) {
  fullpath[dest_len + (slash - filename) + 1] = '\0';
 } else {
  fullpath[dest_len] = '\0';
 }

 if (FAILURE == php_stream_stat_path(fullpath, &ssb)) {
  if (entry->is_dir) {
   if (!php_stream_mkdir(fullpath, entry->flags & PHAR_ENT_PERM_MASK, PHP_STREAM_MKDIR_RECURSIVE, ((void*)0))) {
    spprintf(error, 4096, "Cannot extract \"%s\", could not create directory \"%s\"", entry->filename, fullpath);
    efree(fullpath);
    efree(new_state.cwd);
    return FAILURE;
   }
  } else {
   if (!php_stream_mkdir(fullpath, 0777, PHP_STREAM_MKDIR_RECURSIVE, ((void*)0))) {
    spprintf(error, 4096, "Cannot extract \"%s\", could not create directory \"%s\"", entry->filename, fullpath);
    efree(fullpath);
    efree(new_state.cwd);
    return FAILURE;
   }
  }
 }

 if (slash) {
  fullpath[dest_len + (slash - filename) + 1] = '/';
 } else {
  fullpath[dest_len] = '/';
 }

 filename = ((void*)0);
 efree(new_state.cwd);

 if (entry->is_dir) {
  efree(fullpath);
  return SUCCESS;
 }

 fp = php_stream_open_wrapper(fullpath, "w+b", REPORT_ERRORS, ((void*)0));

 if (!fp) {
  spprintf(error, 4096, "Cannot extract \"%s\", could not open for writing \"%s\"", entry->filename, fullpath);
  efree(fullpath);
  return FAILURE;
 }

 if (!phar_get_efp(entry, 0)) {
  if (FAILURE == phar_open_entry_fp(entry, error, 1)) {
   if (error) {
    spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", unable to open internal file pointer: %s", entry->filename, fullpath, *error);
   } else {
    spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", unable to open internal file pointer", entry->filename, fullpath);
   }
   efree(fullpath);
   php_stream_close(fp);
   return FAILURE;
  }
 }

 if (FAILURE == phar_seek_efp(entry, 0, SEEK_SET, 0, 0)) {
  spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", unable to seek internal file pointer", entry->filename, fullpath);
  efree(fullpath);
  php_stream_close(fp);
  return FAILURE;
 }

 if (SUCCESS != php_stream_copy_to_stream_ex(phar_get_efp(entry, 0), fp, entry->uncompressed_filesize, ((void*)0))) {
  spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", copying contents failed", entry->filename, fullpath);
  efree(fullpath);
  php_stream_close(fp);
  return FAILURE;
 }

 php_stream_close(fp);
 mode = (mode_t) entry->flags & PHAR_ENT_PERM_MASK;

 if (FAILURE == VCWD_CHMOD(fullpath, mode)) {
  spprintf(error, 4096, "Cannot extract \"%s\" to \"%s\", setting file permissions failed", entry->filename, fullpath);
  efree(fullpath);
  return FAILURE;
 }

 efree(fullpath);
 return SUCCESS;
}
