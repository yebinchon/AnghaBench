
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int SET_VARSIZE (int *,int) ;
 char* VARDATA (int *) ;
 int VARDATA_ANY (int *) ;
 int VARHDRSZ ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static text *
text_catenate(text *t1, text *t2)
{
 text *result;
 int len1,
    len2,
    len;
 char *ptr;

 len1 = VARSIZE_ANY_EXHDR(t1);
 len2 = VARSIZE_ANY_EXHDR(t2);


 if (len1 < 0)
  len1 = 0;
 if (len2 < 0)
  len2 = 0;

 len = len1 + len2 + VARHDRSZ;
 result = (text *) palloc(len);


 SET_VARSIZE(result, len);


 ptr = VARDATA(result);
 if (len1 > 0)
  memcpy(ptr, VARDATA_ANY(t1), len1);
 if (len2 > 0)
  memcpy(ptr + len1, VARDATA_ANY(t2), len2);

 return result;
}
