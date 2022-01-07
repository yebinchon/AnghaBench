
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;



uint32
_hash_log2(uint32 num)
{
 uint32 i,
    limit;

 limit = 1;
 for (i = 0; limit < num; limit <<= 1, i++)
  ;
 return i;
}
