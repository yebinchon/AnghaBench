
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int UINT64CONST (int) ;
 int _dorand48 (int ) ;
 int _rand48_seed ;

long
pg_lrand48(void)
{
 uint64 x = _dorand48(_rand48_seed);

 return (x >> 17) & UINT64CONST(0x7FFFFFFF);
}
