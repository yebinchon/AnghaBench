
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline u16 mk_high_addr(u32 reg)
{
 return (reg >> 7) & 0x1ff;
}
