
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int32 ;
typedef int Oid ;


 int DEFAULT_COLLATION_OID ;
 int Min (int,int) ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int memcmp (void*,void*,int ) ;
 int pfree (char*) ;
 char* str_tolower (int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int32
internal_citext_pattern_cmp(text *left, text *right, Oid collid)
{
 char *lcstr,
      *rcstr;
 int llen,
    rlen;
 int32 result;

 lcstr = str_tolower(VARDATA_ANY(left), VARSIZE_ANY_EXHDR(left), DEFAULT_COLLATION_OID);
 rcstr = str_tolower(VARDATA_ANY(right), VARSIZE_ANY_EXHDR(right), DEFAULT_COLLATION_OID);

 llen = strlen(lcstr);
 rlen = strlen(rcstr);

 result = memcmp((void *) lcstr, (void *) rcstr, Min(llen, rlen));
 if (result == 0)
 {
  if (llen < rlen)
   result = -1;
  else if (llen > rlen)
   result = 1;
 }

 pfree(lcstr);
 pfree(rcstr);

 return result;
}
