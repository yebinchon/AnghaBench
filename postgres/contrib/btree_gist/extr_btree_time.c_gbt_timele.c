
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeADT ;
typedef int FmgrInfo ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int TimeADTGetDatumFast (int const) ;
 int time_le ;

__attribute__((used)) static bool
gbt_timele(const void *a, const void *b, FmgrInfo *flinfo)
{
 const TimeADT *aa = (const TimeADT *) a;
 const TimeADT *bb = (const TimeADT *) b;

 return DatumGetBool(DirectFunctionCall2(time_le,
           TimeADTGetDatumFast(*aa),
           TimeADTGetDatumFast(*bb)));
}
