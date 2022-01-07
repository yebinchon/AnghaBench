
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int ComboCidKeyData ;


 int ERROR ;
 int comboCids ;
 int elog (int ,char*) ;
 int memcpy (char*,int ,int) ;
 int usedComboCids ;

void
SerializeComboCIDState(Size maxsize, char *start_address)
{
 char *endptr;


 *(int *) start_address = usedComboCids;


 endptr = start_address + sizeof(int) +
  (sizeof(ComboCidKeyData) * usedComboCids);
 if (endptr < start_address || endptr > start_address + maxsize)
  elog(ERROR, "not enough space to serialize ComboCID state");


 if (usedComboCids > 0)
  memcpy(start_address + sizeof(int), comboCids,
      (sizeof(ComboCidKeyData) * usedComboCids));
}
