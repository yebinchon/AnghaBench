
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef char wchar_t ;
struct TYPE_3__ {char* cwd; size_t cwd_length; } ;
typedef TYPE_1__ cwd_state ;


 int CWD_REALPATH ;
 int ERROR_INVALID_NAME ;
 scalar_t__ GetTempFileNameW (char*,char*,int ,char*) ;
 scalar_t__ IS_SLASH (char) ;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PHP_WIN32_CP_IGNORE_LEN ;
 int SetLastError (int ) ;
 scalar_t__ VCWD_CHMOD (char*,int) ;
 int VCWD_GETCWD (char*,int) ;
 int VCWD_OPEN (char*,int) ;
 int VCWD_OPEN_MODE (char*,int,int) ;
 int _O_BINARY ;
 int assert (int) ;
 int efree (char*) ;
 char* estrdup (char*) ;
 int free (char*) ;
 int mkstemp (char*) ;
 scalar_t__ mktemp (char*) ;
 int php_win32_check_trailing_space (char const*,size_t) ;
 char* php_win32_ioutil_any_to_w (char const*) ;
 char* php_win32_ioutil_conv_w_to_any (char*,int ,size_t*) ;
 int snprintf (char*,int,char*,char*,char*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ virtual_file_ex (TYPE_1__*,char const*,int *,int ) ;
 int * zend_string_init (char*,size_t,int ) ;

__attribute__((used)) static int php_do_open_temporary_file(const char *path, const char *pfx, zend_string **opened_path_p)
{





 char opened_path[MAXPATHLEN];
 char *trailing_slash;

 char cwd[MAXPATHLEN];
 cwd_state new_state;
 int fd = -1;

 int open_flags = O_CREAT | O_TRUNC | O_RDWR



  ;


 if (!path || !path[0]) {
  return -1;
 }
 if (!VCWD_GETCWD(cwd, MAXPATHLEN)) {
  cwd[0] = '\0';
 }

 new_state.cwd = estrdup(cwd);
 new_state.cwd_length = strlen(cwd);

 if (virtual_file_ex(&new_state, path, ((void*)0), CWD_REALPATH)) {
  efree(new_state.cwd);
  return -1;
 }


 if (IS_SLASH(new_state.cwd[new_state.cwd_length - 1])) {
  trailing_slash = "";
 } else {
  trailing_slash = "/";
 }

 if (snprintf(opened_path, MAXPATHLEN, "%s%s%sXXXXXX", new_state.cwd, trailing_slash, pfx) >= MAXPATHLEN) {
  efree(new_state.cwd);
  return -1;
 }
 if (mktemp(opened_path)) {
  fd = VCWD_OPEN(opened_path, open_flags);
 }
 if (fd != -1 && opened_path_p) {
  *opened_path_p = zend_string_init(opened_path, strlen(opened_path), 0);
 }

 efree(new_state.cwd);
 return fd;
}
