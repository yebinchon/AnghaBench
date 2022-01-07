
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macaddr ;
typedef int Datum ;


 int MacaddrPGetDatum (int *) ;
 int * palloc0 (int) ;

__attribute__((used)) static Datum
leftmostvalue_macaddr(void)
{
 macaddr *v = palloc0(sizeof(macaddr));

 return MacaddrPGetDatum(v);
}
