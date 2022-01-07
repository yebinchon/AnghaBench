
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; } ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 struct config_generic* find_option (char const*,int,int ) ;

int
GetConfigOptionFlags(const char *name, bool missing_ok)
{
 struct config_generic *record;

 record = find_option(name, 0, WARNING);
 if (record == ((void*)0))
 {
  if (missing_ok)
   return 0;
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("unrecognized configuration parameter \"%s\"",
      name)));
 }
 return record->flags;
}
