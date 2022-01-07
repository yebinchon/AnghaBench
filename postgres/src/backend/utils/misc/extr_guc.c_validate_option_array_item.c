
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; scalar_t__ context; } ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GUC_ACTION_SET ;
 int GUC_CUSTOM_PLACEHOLDER ;
 scalar_t__ PGC_SUSET ;
 int PGC_S_TEST ;
 scalar_t__ PGC_USERSET ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 struct config_generic* find_option (char const*,int,int ) ;
 int set_config_option (char const*,char const*,scalar_t__,int ,int ,int,int ,int) ;
 scalar_t__ superuser () ;

__attribute__((used)) static bool
validate_option_array_item(const char *name, const char *value,
         bool skipIfNoPermissions)

{
 struct config_generic *gconf;
 gconf = find_option(name, 1, WARNING);
 if (!gconf)
 {

  if (skipIfNoPermissions)
   return 0;
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("unrecognized configuration parameter \"%s\"",
      name)));
 }

 if (gconf->flags & GUC_CUSTOM_PLACEHOLDER)
 {




  if (superuser())
   return 1;
  if (skipIfNoPermissions)
   return 0;
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to set parameter \"%s\"", name)));
 }


 if (gconf->context == PGC_USERSET)
            ;
 else if (gconf->context == PGC_SUSET && superuser())
            ;
 else if (skipIfNoPermissions)
  return 0;



 (void) set_config_option(name, value,
        superuser() ? PGC_SUSET : PGC_USERSET,
        PGC_S_TEST, GUC_ACTION_SET, 0, 0, 0);

 return 1;
}
