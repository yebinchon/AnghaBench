
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int st_mode; } ;
typedef TYPE_1__ zend_stat_t ;
typedef int zend_long ;
struct TYPE_7__ {size_t gl_pathc; scalar_t__* gl_pathv; scalar_t__ gl_offs; } ;
typedef TYPE_2__ glob_t ;


 char* DEFAULT_SLASH ;
 int E_WARNING ;
 int GLOB_AVAILABLE_FLAGS ;
 int GLOB_FLAGMASK ;
 int GLOB_NOMATCH ;
 int GLOB_ONLYDIR ;
 int IS_ABSOLUTE_PATH (char*,int) ;
 scalar_t__ IS_SLASH (char) ;
 int MAXPATHLEN ;
 int S_IFDIR ;
 int S_IFMT ;
 char* VCWD_GETCWD (char*,int) ;
 scalar_t__ VCWD_STAT (scalar_t__,TYPE_1__*) ;
 scalar_t__ ZIP_OPENBASEDIR_CHECKPATH (char*) ;
 int add_next_index_string (int *,scalar_t__) ;
 int array_init (int *) ;
 int glob (char*,int,int *,TYPE_2__*) ;
 int globfree (TYPE_2__*) ;
 int php_error_docref (int *,int ,char*,...) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,scalar_t__,int) ;
 int zend_throw_error (int *,char*) ;

int php_zip_glob(char *pattern, int pattern_len, zend_long flags, zval *return_value)
{
 zend_throw_error(((void*)0), "Glob support is not available");
 return 0;

}
