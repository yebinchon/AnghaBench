
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (void const*) ;
 int interval_gt ;

__attribute__((used)) static bool
gbt_intvgt(const void *a, const void *b, FmgrInfo *flinfo)
{
 return DatumGetBool(DirectFunctionCall2(interval_gt, IntervalPGetDatum(a), IntervalPGetDatum(b)));
}
