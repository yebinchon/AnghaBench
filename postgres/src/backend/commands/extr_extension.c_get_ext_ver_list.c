
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dirent {char* d_name; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int installable; int reachable; } ;
typedef int List ;
typedef TYPE_1__ ExtensionVersionInfo ;
typedef TYPE_2__ ExtensionControlFile ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int FreeDir (int *) ;
 int * NIL ;
 struct dirent* ReadDir (int *,char*) ;
 TYPE_1__* get_ext_ver_info (char*,int **) ;
 char* get_extension_script_directory (TYPE_2__*) ;
 int is_extension_script_filename (char*) ;
 int lappend (int ,TYPE_1__*) ;
 char* pstrdup (char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 char* strrchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static List *
get_ext_ver_list(ExtensionControlFile *control)
{
 List *evi_list = NIL;
 int extnamelen = strlen(control->name);
 char *location;
 DIR *dir;
 struct dirent *de;

 location = get_extension_script_directory(control);
 dir = AllocateDir(location);
 while ((de = ReadDir(dir, location)) != ((void*)0))
 {
  char *vername;
  char *vername2;
  ExtensionVersionInfo *evi;
  ExtensionVersionInfo *evi2;


  if (!is_extension_script_filename(de->d_name))
   continue;


  if (strncmp(de->d_name, control->name, extnamelen) != 0 ||
   de->d_name[extnamelen] != '-' ||
   de->d_name[extnamelen + 1] != '-')
   continue;


  vername = pstrdup(de->d_name + extnamelen + 2);
  *strrchr(vername, '.') = '\0';
  vername2 = strstr(vername, "--");
  if (!vername2)
  {

   evi = get_ext_ver_info(vername, &evi_list);
   evi->installable = 1;
   continue;
  }
  *vername2 = '\0';
  vername2 += 2;


  if (strstr(vername2, "--"))
   continue;


  evi = get_ext_ver_info(vername, &evi_list);
  evi2 = get_ext_ver_info(vername2, &evi_list);
  evi->reachable = lappend(evi->reachable, evi2);
 }
 FreeDir(dir);

 return evi_list;
}
