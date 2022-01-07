
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_mode; } ;
typedef TYPE_1__ zend_stat_t ;
struct TYPE_5__ {char* executable_location; } ;
typedef char* PG ;


 scalar_t__ GetModuleFileName (int ,char*,int) ;
 int MAXPATHLEN ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ VCWD_ACCESS (char*,int ) ;
 scalar_t__ VCWD_REALPATH (char*,char*) ;
 scalar_t__ VCWD_STAT (char*,TYPE_1__*) ;
 int X_OK ;
 int efree (char*) ;
 char* estrdup (char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ malloc (int) ;
 char* php_strtok_r (char*,char*,char**) ;
 TYPE_2__ sapi_module ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strchr (char*,char) ;

__attribute__((used)) static void php_binary_init(void)
{
 char *binary_location = ((void*)0);







 if (sapi_module.executable_location) {
  binary_location = (char *)malloc(MAXPATHLEN);
  if (binary_location && !strchr(sapi_module.executable_location, '/')) {
   char *envpath, *path;
   int found = 0;

   if ((envpath = getenv("PATH")) != ((void*)0)) {
    char *search_dir, search_path[MAXPATHLEN];
    char *last = ((void*)0);
    zend_stat_t s;

    path = estrdup(envpath);
    search_dir = php_strtok_r(path, ":", &last);

    while (search_dir) {
     snprintf(search_path, MAXPATHLEN, "%s/%s", search_dir, sapi_module.executable_location);
     if (VCWD_REALPATH(search_path, binary_location) && !VCWD_ACCESS(binary_location, X_OK) && VCWD_STAT(binary_location, &s) == 0 && S_ISREG(s.st_mode)) {
      found = 1;
      break;
     }
     search_dir = php_strtok_r(((void*)0), ":", &last);
    }
    efree(path);
   }
   if (!found) {
    free(binary_location);
    binary_location = ((void*)0);
   }
  } else if (!VCWD_REALPATH(sapi_module.executable_location, binary_location) || VCWD_ACCESS(binary_location, X_OK)) {
   free(binary_location);
   binary_location = ((void*)0);
  }
 }

 PG(php_binary) = binary_location;
}
