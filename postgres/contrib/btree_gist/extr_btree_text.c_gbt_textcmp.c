
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int FmgrInfo ;


 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2Coll (int ,int ,int ,int ) ;
 int PointerGetDatum (void const*) ;
 int bttextcmp ;

__attribute__((used)) static int32
gbt_textcmp(const void *a, const void *b, Oid collation, FmgrInfo *flinfo)
{
 return DatumGetInt32(DirectFunctionCall2Coll(bttextcmp,
             collation,
             PointerGetDatum(a),
             PointerGetDatum(b)));
}
