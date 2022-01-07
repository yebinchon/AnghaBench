
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int JsonLexContext ;


 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int * makeJsonLexContextCstringLen (int ,int ,int) ;

JsonLexContext *
makeJsonLexContext(text *json, bool need_escapes)
{
 return makeJsonLexContextCstringLen(VARDATA_ANY(json),
          VARSIZE_ANY_EXHDR(json),
          need_escapes);
}
