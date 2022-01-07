
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int varstr_cmp (char*,int,char*,int,int ) ;

__attribute__((used)) static int
text_cmp(text *arg1, text *arg2, Oid collid)
{
 char *a1p,
      *a2p;
 int len1,
    len2;

 a1p = VARDATA_ANY(arg1);
 a2p = VARDATA_ANY(arg2);

 len1 = VARSIZE_ANY_EXHDR(arg1);
 len2 = VARSIZE_ANY_EXHDR(arg2);

 return varstr_cmp(a1p, len1, a2p, len2, collid);
}
