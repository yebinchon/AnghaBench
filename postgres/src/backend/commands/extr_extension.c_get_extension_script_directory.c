
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* directory; } ;
typedef TYPE_1__ ExtensionControlFile ;


 int MAXPGPATH ;
 char* get_extension_control_directory () ;
 int get_share_path (int ,char*) ;
 scalar_t__ is_absolute_path (char*) ;
 int my_exec_path ;
 scalar_t__ palloc (int) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static char *
get_extension_script_directory(ExtensionControlFile *control)
{
 char sharepath[MAXPGPATH];
 char *result;





 if (!control->directory)
  return get_extension_control_directory();

 if (is_absolute_path(control->directory))
  return pstrdup(control->directory);

 get_share_path(my_exec_path, sharepath);
 result = (char *) palloc(MAXPGPATH);
 snprintf(result, MAXPGPATH, "%s/%s", sharepath, control->directory);

 return result;
}
