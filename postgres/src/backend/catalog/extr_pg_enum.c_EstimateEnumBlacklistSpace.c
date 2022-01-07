
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Oid ;


 scalar_t__ enum_blacklist ;
 size_t hash_get_num_entries (scalar_t__) ;

Size
EstimateEnumBlacklistSpace(void)
{
 size_t entries;

 if (enum_blacklist)
  entries = hash_get_num_entries(enum_blacklist);
 else
  entries = 0;


 return sizeof(Oid) * (entries + 1);
}
