
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2Coll (int ,int ,int ,int ) ;
 int PointerGetDatum (void const*) ;
 int text_ge ;

__attribute__((used)) static bool
gbt_textge(const void *a, const void *b, Oid collation, FmgrInfo *flinfo)
{
 return DatumGetBool(DirectFunctionCall2Coll(text_ge,
            collation,
            PointerGetDatum(a),
            PointerGetDatum(b)));
}
