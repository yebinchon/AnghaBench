
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int BpChar ;


 int ERRCODE_STRING_DATA_RIGHT_TRUNCATION ;
 int ERROR ;
 int SET_VARSIZE (int *,scalar_t__) ;
 char* VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,char,size_t) ;
 scalar_t__ palloc (scalar_t__) ;
 size_t pg_mbcharcliplen (char const*,size_t,size_t) ;
 size_t pg_mbstrlen_with_len (char const*,size_t) ;

__attribute__((used)) static BpChar *
bpchar_input(const char *s, size_t len, int32 atttypmod)
{
 BpChar *result;
 char *r;
 size_t maxlen;


 if (atttypmod < (int32) VARHDRSZ)
  maxlen = len;
 else
 {
  size_t charlen;

  maxlen = atttypmod - VARHDRSZ;
  charlen = pg_mbstrlen_with_len(s, len);
  if (charlen > maxlen)
  {

   size_t mbmaxlen = pg_mbcharcliplen(s, len, maxlen);
   size_t j;






   for (j = mbmaxlen; j < len; j++)
   {
    if (s[j] != ' ')
     ereport(ERROR,
       (errcode(ERRCODE_STRING_DATA_RIGHT_TRUNCATION),
        errmsg("value too long for type character(%d)",
         (int) maxlen)));
   }





   maxlen = len = mbmaxlen;
  }
  else
  {




   maxlen = len + (maxlen - charlen);
  }
 }

 result = (BpChar *) palloc(maxlen + VARHDRSZ);
 SET_VARSIZE(result, maxlen + VARHDRSZ);
 r = VARDATA(result);
 memcpy(r, s, len);


 if (maxlen > len)
  memset(r + len, ' ', maxlen - len);

 return result;
}
