
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int * DatumGetTextPP (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int PointerGetDatum (int *) ;
 int * cstring_to_text (char*) ;
 int quote_ident ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static char *
quote_ident_cstr(char *rawstr)
{
 text *rawstr_text;
 text *result_text;
 char *result;

 rawstr_text = cstring_to_text(rawstr);
 result_text = DatumGetTextPP(DirectFunctionCall1(quote_ident,
              PointerGetDatum(rawstr_text)));
 result = text_to_cstring(result_text);

 return result;
}
