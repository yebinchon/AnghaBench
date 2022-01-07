
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DT_NOBEGIN ;
 int TimestampGetDatum (int ) ;

__attribute__((used)) static Datum
leftmostvalue_timestamp(void)
{
 return TimestampGetDatum(DT_NOBEGIN);
}
