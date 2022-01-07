
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ zend_stat_t ;
typedef int uint32_t ;
typedef int pcre2_match_data ;
typedef int pcre2_match_context ;
typedef int pcre2_code ;
typedef int PCRE2_SPTR ;


 char* DEFAULT_SLASH ;
 int E_WARNING ;
 int IS_ABSOLUTE_PATH (char*,int) ;
 scalar_t__ IS_SLASH (char) ;
 int MAXPATHLEN ;
 int S_IFDIR ;
 int S_IFMT ;
 char* VCWD_GETCWD (char*,int) ;
 scalar_t__ VCWD_STAT (char*,TYPE_1__*) ;
 scalar_t__ ZIP_OPENBASEDIR_CHECKPATH (char*) ;
 size_t ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int add_next_index_string (int *,char*) ;
 int array_init (int *) ;
 int efree (int **) ;
 int pcre2_match (int *,int ,size_t,int ,int ,int *,int *) ;
 int * pcre_get_compiled_regex (int *,int*) ;
 int php_error_docref (int *,int ,char*,...) ;
 int * php_pcre_create_match_data (int,int *) ;
 int php_pcre_free_match_data (int *) ;
 int * php_pcre_mctx () ;
 scalar_t__ php_stream_dirent_alphasort ;
 int php_stream_scandir (char*,int ***,int *,void*) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 int zend_string_release_ex (int *,int ) ;

int php_zip_pcre(zend_string *regexp, char *path, int path_len, zval *return_value)
{





 int files_cnt;
 zend_string **namelist;
 pcre2_match_context *mctx = php_pcre_mctx();
 if (ZIP_OPENBASEDIR_CHECKPATH(path)) {
  return -1;
 }

 files_cnt = php_stream_scandir(path, &namelist, ((void*)0), (void *) php_stream_dirent_alphasort);

 if (files_cnt > 0) {
  pcre2_code *re = ((void*)0);
  pcre2_match_data *match_data = ((void*)0);
  uint32_t i, capture_count;
  int rc;

  re = pcre_get_compiled_regex(regexp, &capture_count);
  if (!re) {
   php_error_docref(((void*)0), E_WARNING, "Invalid expression");
   return -1;
  }

  array_init(return_value);


  for (i = 0; i < files_cnt; i++) {
   zend_stat_t s;
   char fullpath[MAXPATHLEN];
   size_t namelist_len = ZSTR_LEN(namelist[i]);

   if ((namelist_len == 1 && ZSTR_VAL(namelist[i])[0] == '.') ||
    (namelist_len == 2 && ZSTR_VAL(namelist[i])[0] == '.' && ZSTR_VAL(namelist[i])[1] == '.')) {
    zend_string_release_ex(namelist[i], 0);
    continue;
   }

   if ((path_len + namelist_len + 1) >= MAXPATHLEN) {
    php_error_docref(((void*)0), E_WARNING, "add_path string too long (max: %u, %zu given)",
      MAXPATHLEN - 1, (path_len + namelist_len + 1));
    zend_string_release_ex(namelist[i], 0);
    break;
   }

   match_data = php_pcre_create_match_data(capture_count, re);
   if (!match_data) {

    zend_string_release_ex(namelist[i], 0);
    continue;
   }
   rc = pcre2_match(re, (PCRE2_SPTR)ZSTR_VAL(namelist[i]), ZSTR_LEN(namelist[i]), 0, 0, match_data, mctx);
   php_pcre_free_match_data(match_data);

   if (rc < 0) {
    zend_string_release_ex(namelist[i], 0);
    continue;
   }

   snprintf(fullpath, MAXPATHLEN, "%s%c%s", path, DEFAULT_SLASH, ZSTR_VAL(namelist[i]));

   if (0 != VCWD_STAT(fullpath, &s)) {
    php_error_docref(((void*)0), E_WARNING, "Cannot read <%s>", fullpath);
    zend_string_release_ex(namelist[i], 0);
    continue;
   }

   if (S_IFDIR == (s.st_mode & S_IFMT)) {
    zend_string_release_ex(namelist[i], 0);
    continue;
   }

   add_next_index_string(return_value, fullpath);
   zend_string_release_ex(namelist[i], 0);
  }
  efree(namelist);
 }
 return files_cnt;
}
