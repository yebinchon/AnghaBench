
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int PointerGetDatum (void const*) ;
 int macaddr_lt ;

__attribute__((used)) static bool
gbt_macadlt(const void *a, const void *b, FmgrInfo *flinfo)
{
 return DatumGetBool(DirectFunctionCall2(macaddr_lt, PointerGetDatum(a), PointerGetDatum(b)));
}
