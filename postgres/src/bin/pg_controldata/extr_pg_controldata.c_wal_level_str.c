
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WalLevel ;





 char const* _ (char*) ;

__attribute__((used)) static const char *
wal_level_str(WalLevel wal_level)
{
 switch (wal_level)
 {
  case 129:
   return "minimal";
  case 128:
   return "replica";
  case 130:
   return "logical";
 }
 return _("unrecognized wal_level");
}
