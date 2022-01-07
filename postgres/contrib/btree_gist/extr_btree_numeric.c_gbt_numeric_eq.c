
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int PointerGetDatum (void const*) ;
 int numeric_eq ;

__attribute__((used)) static bool
gbt_numeric_eq(const void *a, const void *b, Oid collation, FmgrInfo *flinfo)
{
 return DatumGetBool(DirectFunctionCall2(numeric_eq,
           PointerGetDatum(a),
           PointerGetDatum(b)));
}
