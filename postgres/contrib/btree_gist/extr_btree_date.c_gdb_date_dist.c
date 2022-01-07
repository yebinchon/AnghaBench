
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int DateADT ;


 int Abs (int ) ;
 int DateADTGetDatum (int const) ;
 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int date_mi ;

__attribute__((used)) static float8
gdb_date_dist(const void *a, const void *b, FmgrInfo *flinfo)
{

 Datum diff = DirectFunctionCall2(date_mi,
             DateADTGetDatum(*((const DateADT *) a)),
             DateADTGetDatum(*((const DateADT *) b)));

 return (float8) Abs(DatumGetInt32(diff));
}
