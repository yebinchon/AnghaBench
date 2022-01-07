
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macaddr ;
typedef int SortSupport ;
typedef int Datum ;


 int * DatumGetMacaddrP (int ) ;
 int macaddr_cmp_internal (int *,int *) ;

__attribute__((used)) static int
macaddr_fast_cmp(Datum x, Datum y, SortSupport ssup)
{
 macaddr *arg1 = DatumGetMacaddrP(x);
 macaddr *arg2 = DatumGetMacaddrP(y);

 return macaddr_cmp_internal(arg1, arg2);
}
