
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;


 int Assert (int) ;
 int PG_UINT32_MAX ;
 int UINT64CONST (int) ;

__attribute__((used)) static inline uint32
mod_m(uint32 val, uint64 m)
{
 Assert(m <= PG_UINT32_MAX + UINT64CONST(1));
 Assert(((m - 1) & m) == 0);

 return val & (m - 1);
}
