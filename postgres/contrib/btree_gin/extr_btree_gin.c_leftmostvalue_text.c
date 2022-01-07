
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int PointerGetDatum (int ) ;
 int cstring_to_text_with_len (char*,int ) ;

__attribute__((used)) static Datum
leftmostvalue_text(void)
{
 return PointerGetDatum(cstring_to_text_with_len("", 0));
}
