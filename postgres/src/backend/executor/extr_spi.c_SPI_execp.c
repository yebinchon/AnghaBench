
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SPIPlanPtr ;
typedef int Datum ;


 int SPI_execute_plan (int ,int *,char const*,int,long) ;

int
SPI_execp(SPIPlanPtr plan, Datum *Values, const char *Nulls, long tcount)
{
 return SPI_execute_plan(plan, Values, Nulls, 0, tcount);
}
