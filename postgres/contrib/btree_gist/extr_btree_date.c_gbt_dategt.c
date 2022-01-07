
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;
typedef int DateADT ;


 int DateADTGetDatum (int const) ;
 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int date_gt ;

__attribute__((used)) static bool
gbt_dategt(const void *a, const void *b, FmgrInfo *flinfo)
{
 return DatumGetBool(
      DirectFunctionCall2(date_gt, DateADTGetDatum(*((const DateADT *) a)), DateADTGetDatum(*((const DateADT *) b)))
  );
}
