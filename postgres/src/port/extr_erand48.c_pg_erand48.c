
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int UINT64CONST (int) ;
 int _dorand48 (unsigned short*) ;
 double ldexp (double,int) ;

double
pg_erand48(unsigned short xseed[3])
{
 uint64 x = _dorand48(xseed);

 return ldexp((double) (x & UINT64CONST(0xFFFFFFFFFFFF)), -48);
}
