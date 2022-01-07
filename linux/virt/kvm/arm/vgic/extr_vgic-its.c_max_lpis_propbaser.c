
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;


 int INTERRUPT_ID_BITS_ITS ;
 unsigned int min (int,int ) ;

__attribute__((used)) static u32 max_lpis_propbaser(u64 propbaser)
{
 int nr_idbits = (propbaser & 0x1f) + 1;

 return 1U << min(nr_idbits, INTERRUPT_ID_BITS_ITS);
}
