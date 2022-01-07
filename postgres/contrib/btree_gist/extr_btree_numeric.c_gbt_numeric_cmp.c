
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int FmgrInfo ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int PointerGetDatum (void const*) ;
 int numeric_cmp ;

__attribute__((used)) static int32
gbt_numeric_cmp(const void *a, const void *b, Oid collation, FmgrInfo *flinfo)
{
 return DatumGetInt32(DirectFunctionCall2(numeric_cmp,
            PointerGetDatum(a),
            PointerGetDatum(b)));
}
