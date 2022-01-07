
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int32 ;
typedef int Oid ;


 int DEFAULT_COLLATION_OID ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int pfree (char*) ;
 char* str_tolower (int ,int ,int ) ;
 int strlen (char*) ;
 int varstr_cmp (char*,int ,char*,int ,int ) ;

__attribute__((used)) static int32
citextcmp(text *left, text *right, Oid collid)
{
 char *lcstr,
      *rcstr;
 int32 result;
 lcstr = str_tolower(VARDATA_ANY(left), VARSIZE_ANY_EXHDR(left), DEFAULT_COLLATION_OID);
 rcstr = str_tolower(VARDATA_ANY(right), VARSIZE_ANY_EXHDR(right), DEFAULT_COLLATION_OID);

 result = varstr_cmp(lcstr, strlen(lcstr),
      rcstr, strlen(rcstr),
      collid);

 pfree(lcstr);
 pfree(rcstr);

 return result;
}
