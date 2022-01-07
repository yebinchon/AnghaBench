
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int Timestamp ;
typedef int Interval ;
typedef int FmgrInfo ;


 int Abs (int ) ;
 int * DatumGetIntervalP (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int INTERVAL_TO_SEC (int *) ;
 scalar_t__ TIMESTAMP_NOT_FINITE (int const) ;
 int TimestampGetDatumFast (int const) ;
 int get_float8_infinity () ;
 int timestamp_mi ;

__attribute__((used)) static float8
gbt_ts_dist(const void *a, const void *b, FmgrInfo *flinfo)
{
 const Timestamp *aa = (const Timestamp *) a;
 const Timestamp *bb = (const Timestamp *) b;
 Interval *i;

 if (TIMESTAMP_NOT_FINITE(*aa) || TIMESTAMP_NOT_FINITE(*bb))
  return get_float8_infinity();

 i = DatumGetIntervalP(DirectFunctionCall2(timestamp_mi,
             TimestampGetDatumFast(*aa),
             TimestampGetDatumFast(*bb)));
 return (float8) Abs(INTERVAL_TO_SEC(i));
}
