
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Timestamp ;
typedef int FmgrInfo ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int TimestampGetDatumFast (int const) ;
 int timestamp_eq ;

__attribute__((used)) static bool
gbt_tseq(const void *a, const void *b, FmgrInfo *flinfo)
{
 const Timestamp *aa = (const Timestamp *) a;
 const Timestamp *bb = (const Timestamp *) b;

 return DatumGetBool(DirectFunctionCall2(timestamp_eq,
           TimestampGetDatumFast(*aa),
           TimestampGetDatumFast(*bb)));
}
