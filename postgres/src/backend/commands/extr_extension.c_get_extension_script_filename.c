
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ ExtensionControlFile ;


 int MAXPGPATH ;
 char* get_extension_script_directory (TYPE_1__*) ;
 scalar_t__ palloc (int ) ;
 int pfree (char*) ;
 int snprintf (char*,int ,char*,char*,char*,char const*,...) ;

__attribute__((used)) static char *
get_extension_script_filename(ExtensionControlFile *control,
         const char *from_version, const char *version)
{
 char *result;
 char *scriptdir;

 scriptdir = get_extension_script_directory(control);

 result = (char *) palloc(MAXPGPATH);
 if (from_version)
  snprintf(result, MAXPGPATH, "%s/%s--%s--%s.sql",
     scriptdir, control->name, from_version, version);
 else
  snprintf(result, MAXPGPATH, "%s/%s--%s.sql",
     scriptdir, control->name, version);

 pfree(scriptdir);

 return result;
}
