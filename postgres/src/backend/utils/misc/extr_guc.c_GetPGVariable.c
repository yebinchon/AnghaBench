
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DestReceiver ;


 int ShowAllGUCConfig (int *) ;
 int ShowGUCConfigOption (char const*,int *) ;
 scalar_t__ guc_name_compare (char const*,char*) ;

void
GetPGVariable(const char *name, DestReceiver *dest)
{
 if (guc_name_compare(name, "all") == 0)
  ShowAllGUCConfig(dest);
 else
  ShowGUCConfigOption(name, dest);
}
