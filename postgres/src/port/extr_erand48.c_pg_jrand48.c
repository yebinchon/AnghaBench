
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef long int32 ;


 int UINT64CONST (int) ;
 int _dorand48 (unsigned short*) ;

long
pg_jrand48(unsigned short xseed[3])
{
 uint64 x = _dorand48(xseed);

 return (int32) ((x >> 16) & UINT64CONST(0xFFFFFFFF));
}
