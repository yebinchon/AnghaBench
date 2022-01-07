
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_string {char const** variable; } ;
struct config_real {int* variable; } ;
struct config_int {int* variable; } ;
struct config_generic {int flags; int vartype; } ;
struct config_enum {int * variable; } ;
struct config_bool {int * variable; } ;
typedef int buffer ;


 int DEFAULT_ROLE_READ_ALL_SETTINGS ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GUC_SUPERUSER_ONLY ;
 int GetUserId () ;





 char const* config_enum_lookup_by_value (struct config_enum*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 struct config_generic* find_option (char const*,int,int ) ;
 int is_member_of_role (int ,int ) ;
 int snprintf (char*,int,char*,int) ;

const char *
GetConfigOption(const char *name, bool missing_ok, bool restrict_privileged)
{
 struct config_generic *record;
 static char buffer[256];

 record = find_option(name, 0, ERROR);
 if (record == ((void*)0))
 {
  if (missing_ok)
   return ((void*)0);
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("unrecognized configuration parameter \"%s\"",
      name)));
 }
 if (restrict_privileged &&
  (record->flags & GUC_SUPERUSER_ONLY) &&
  !is_member_of_role(GetUserId(), DEFAULT_ROLE_READ_ALL_SETTINGS))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser or a member of pg_read_all_settings to examine \"%s\"",
      name)));

 switch (record->vartype)
 {
  case 132:
   return *((struct config_bool *) record)->variable ? "on" : "off";

  case 130:
   snprintf(buffer, sizeof(buffer), "%d",
      *((struct config_int *) record)->variable);
   return buffer;

  case 129:
   snprintf(buffer, sizeof(buffer), "%g",
      *((struct config_real *) record)->variable);
   return buffer;

  case 128:
   return *((struct config_string *) record)->variable;

  case 131:
   return config_enum_lookup_by_value((struct config_enum *) record,
              *((struct config_enum *) record)->variable);
 }
 return ((void*)0);
}
