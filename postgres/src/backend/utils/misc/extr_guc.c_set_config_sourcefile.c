
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {char* sourcefile; int sourceline; } ;


 int DEBUG3 ;
 int ERROR ;
 scalar_t__ IsUnderPostmaster ;
 int LOG ;
 int elog (int ,char*,char const*) ;
 struct config_generic* find_option (char const*,int,int) ;
 int free (char*) ;
 char* guc_strdup (int,char*) ;

__attribute__((used)) static void
set_config_sourcefile(const char *name, char *sourcefile, int sourceline)
{
 struct config_generic *record;
 int elevel;





 elevel = IsUnderPostmaster ? DEBUG3 : LOG;

 record = find_option(name, 1, elevel);

 if (record == ((void*)0))
  elog(ERROR, "unrecognized configuration parameter \"%s\"", name);

 sourcefile = guc_strdup(elevel, sourcefile);
 if (record->sourcefile)
  free(record->sourcefile);
 record->sourcefile = sourcefile;
 record->sourceline = sourceline;
}
