
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBState ;
 char const* _ (char*) ;

__attribute__((used)) static const char *
dbState(DBState state)
{
 switch (state)
 {
  case 128:
   return _("starting up");
  case 131:
   return _("shut down");
  case 130:
   return _("shut down in recovery");
  case 129:
   return _("shutting down");
  case 133:
   return _("in crash recovery");
  case 134:
   return _("in archive recovery");
  case 132:
   return _("in production");
 }
 return _("unrecognized status code");
}
