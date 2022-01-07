
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2Coll (int ,int ,int ,int ) ;
 int PointerGetDatum (int *) ;
 int texteq ;

__attribute__((used)) static bool
text_isequal(text *txt1, text *txt2, Oid collid)
{
 return DatumGetBool(DirectFunctionCall2Coll(texteq,
            collid,
            PointerGetDatum(txt1),
            PointerGetDatum(txt2)));
}
