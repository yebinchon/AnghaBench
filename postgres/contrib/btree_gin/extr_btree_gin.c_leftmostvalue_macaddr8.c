
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macaddr8 ;
typedef int Datum ;


 int Macaddr8PGetDatum (int *) ;
 int * palloc0 (int) ;

__attribute__((used)) static Datum
leftmostvalue_macaddr8(void)
{
 macaddr8 *v = palloc0(sizeof(macaddr8));

 return Macaddr8PGetDatum(v);
}
