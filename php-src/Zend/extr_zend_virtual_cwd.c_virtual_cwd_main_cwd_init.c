
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int cwd ;
struct TYPE_2__ {int cwd_length; int cwd; } ;


 int MAXPATHLEN ;
 int ZeroMemory (char**,int) ;
 int free (int ) ;
 char* getcwd (char*,int) ;
 TYPE_1__ main_cwd_state ;
 char* php_win32_ioutil_getcwd (char*,int) ;
 int strdup (char*) ;
 int strlen (char*) ;
 char toupper (char) ;

void virtual_cwd_main_cwd_init(uint8_t reinit)
{
 char cwd[MAXPATHLEN];
 char *result;

 if (reinit) {
  free(main_cwd_state.cwd);
 }





 result = getcwd(cwd, sizeof(cwd));


 if (!result) {
  cwd[0] = '\0';
 }

 main_cwd_state.cwd_length = strlen(cwd);





 main_cwd_state.cwd = strdup(cwd);
}
