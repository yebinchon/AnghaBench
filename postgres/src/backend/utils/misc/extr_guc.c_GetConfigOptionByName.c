
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; char* name; } ;


 int DEFAULT_ROLE_READ_ALL_SETTINGS ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GUC_SUPERUSER_ONLY ;
 int GetUserId () ;
 char* _ShowOption (struct config_generic*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 struct config_generic* find_option (char const*,int,int ) ;
 int is_member_of_role (int ,int ) ;

char *
GetConfigOptionByName(const char *name, const char **varname, bool missing_ok)
{
 struct config_generic *record;

 record = find_option(name, 0, ERROR);
 if (record == ((void*)0))
 {
  if (missing_ok)
  {
   if (varname)
    *varname = ((void*)0);
   return ((void*)0);
  }

  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("unrecognized configuration parameter \"%s\"", name)));
 }

 if ((record->flags & GUC_SUPERUSER_ONLY) &&
  !is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser or a member of pg_read_all_settings to examine \"%s\"",
      name)));

 if (varname)
  *varname = record->name;

 return _ShowOption(record, 1);
}
