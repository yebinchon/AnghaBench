
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ PG_SQL_ASCII ;
 scalar_t__ PG_UTF8 ;
 int binaryCompareStrings (char const*,int,char const*,int) ;
 int pfree (char*) ;
 char* pg_server_to_any (char const*,int,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static int
compareStrings(const char *mbstr1, int mblen1,
      const char *mbstr2, int mblen2)
{
 if (GetDatabaseEncoding() == PG_SQL_ASCII ||
  GetDatabaseEncoding() == PG_UTF8)
 {





  return binaryCompareStrings(mbstr1, mblen1, mbstr2, mblen2);
 }
 else
 {
  char *utf8str1,
       *utf8str2;
  int cmp,
     utf8len1,
     utf8len2;







  utf8str1 = pg_server_to_any(mbstr1, mblen1, PG_UTF8);
  utf8str2 = pg_server_to_any(mbstr2, mblen2, PG_UTF8);
  utf8len1 = (mbstr1 == utf8str1) ? mblen1 : strlen(utf8str1);
  utf8len2 = (mbstr2 == utf8str2) ? mblen2 : strlen(utf8str2);

  cmp = binaryCompareStrings(utf8str1, utf8len1, utf8str2, utf8len2);





  if (mbstr1 == utf8str1 && mbstr2 == utf8str2)
   return cmp;


  if (mbstr1 != utf8str1)
   pfree(utf8str1);
  if (mbstr2 != utf8str2)
   pfree(utf8str2);
  if (cmp == 0)
   return binaryCompareStrings(mbstr1, mblen1, mbstr2, mblen2);
  else
   return cmp;
 }
}
