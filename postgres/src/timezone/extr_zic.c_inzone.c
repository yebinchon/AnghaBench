
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_2__ {char* z_name; char* z_filename; int z_linenum; } ;


 char* TZDEFRULES ;
 size_t ZF_NAME ;
 int ZONE_MAXFIELDS ;
 int ZONE_MINFIELDS ;
 int _ (char*) ;
 int error (int ,...) ;
 int inzsub (char**,int,int) ;
 int * lcltime ;
 size_t nzones ;
 int * psxrules ;
 scalar_t__ strcmp (char*,char*) ;
 char* tzdefault ;
 TYPE_1__* zones ;

__attribute__((used)) static bool
inzone(char **fields, int nfields)
{
 ptrdiff_t i;

 if (nfields < ZONE_MINFIELDS || nfields > ZONE_MAXFIELDS)
 {
  error(_("wrong number of fields on Zone line"));
  return 0;
 }
 if (lcltime != ((void*)0) && strcmp(fields[ZF_NAME], tzdefault) == 0)
 {
  error(
     _("\"Zone %s\" line and -l option are mutually exclusive"),
     tzdefault);
  return 0;
 }
 if (strcmp(fields[ZF_NAME], TZDEFRULES) == 0 && psxrules != ((void*)0))
 {
  error(
     _("\"Zone %s\" line and -p option are mutually exclusive"),
     TZDEFRULES);
  return 0;
 }
 for (i = 0; i < nzones; ++i)
  if (zones[i].z_name != ((void*)0) &&
   strcmp(zones[i].z_name, fields[ZF_NAME]) == 0)
  {
   error(_("duplicate zone name %s"
     " (file \"%s\", line %d)"),
      fields[ZF_NAME],
      zones[i].z_filename,
      zones[i].z_linenum);
   return 0;
  }
 return inzsub(fields, nfields, 0);
}
