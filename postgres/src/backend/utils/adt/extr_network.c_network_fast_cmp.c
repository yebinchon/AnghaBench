
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;
typedef int SortSupport ;
typedef int Datum ;


 int * DatumGetInetPP (int ) ;
 int network_cmp_internal (int *,int *) ;

__attribute__((used)) static int
network_fast_cmp(Datum x, Datum y, SortSupport ssup)
{
 inet *arg1 = DatumGetInetPP(x);
 inet *arg2 = DatumGetInetPP(y);

 return network_cmp_internal(arg1, arg2);
}
