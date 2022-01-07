
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int GENMASK_ULL (unsigned int,int ) ;

unsigned long extract_bytes(u64 data, unsigned int offset,
       unsigned int num)
{
 return (data >> (offset * 8)) & GENMASK_ULL(num * 8 - 1, 0);
}
