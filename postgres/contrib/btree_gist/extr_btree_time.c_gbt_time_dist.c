
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int TimeADT ;
typedef int Interval ;
typedef int FmgrInfo ;


 int Abs (int ) ;
 int * DatumGetIntervalP (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int INTERVAL_TO_SEC (int *) ;
 int TimeADTGetDatumFast (int const) ;
 int time_mi_time ;

__attribute__((used)) static float8
gbt_time_dist(const void *a, const void *b, FmgrInfo *flinfo)
{
 const TimeADT *aa = (const TimeADT *) a;
 const TimeADT *bb = (const TimeADT *) b;
 Interval *i;

 i = DatumGetIntervalP(DirectFunctionCall2(time_mi_time,
             TimeADTGetDatumFast(*aa),
             TimeADTGetDatumFast(*bb)));
 return (float8) Abs(INTERVAL_TO_SEC(i));
}
