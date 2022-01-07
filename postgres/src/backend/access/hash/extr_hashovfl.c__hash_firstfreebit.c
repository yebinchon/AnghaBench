
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;


 scalar_t__ BITS_PER_MAP ;
 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static uint32
_hash_firstfreebit(uint32 map)
{
 uint32 i,
    mask;

 mask = 0x1;
 for (i = 0; i < BITS_PER_MAP; i++)
 {
  if (!(mask & map))
   return i;
  mask <<= 1;
 }

 elog(ERROR, "firstfreebit found no free bit");

 return 0;
}
