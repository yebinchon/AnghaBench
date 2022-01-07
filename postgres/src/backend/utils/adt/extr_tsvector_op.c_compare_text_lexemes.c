
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 char* VARDATA_ANY (int ) ;
 int VARSIZE_ANY_EXHDR (int ) ;
 int tsCompareString (char*,int,char*,int,int) ;

__attribute__((used)) static int
compare_text_lexemes(const void *va, const void *vb)
{
 Datum a = *((const Datum *) va);
 Datum b = *((const Datum *) vb);
 char *alex = VARDATA_ANY(a);
 int alex_len = VARSIZE_ANY_EXHDR(a);
 char *blex = VARDATA_ANY(b);
 int blex_len = VARSIZE_ANY_EXHDR(b);

 return tsCompareString(alex, alex_len, blex, blex_len, 0);
}
