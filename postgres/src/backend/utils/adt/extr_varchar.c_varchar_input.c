
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int VarChar ;


 int ERRCODE_STRING_DATA_RIGHT_TRUNCATION ;
 int ERROR ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ cstring_to_text_with_len (char const*,size_t) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 size_t pg_mbcharcliplen (char const*,size_t,size_t) ;

__attribute__((used)) static VarChar *
varchar_input(const char *s, size_t len, int32 atttypmod)
{
 VarChar *result;
 size_t maxlen;

 maxlen = atttypmod - VARHDRSZ;

 if (atttypmod >= (int32) VARHDRSZ && len > maxlen)
 {

  size_t mbmaxlen = pg_mbcharcliplen(s, len, maxlen);
  size_t j;

  for (j = mbmaxlen; j < len; j++)
  {
   if (s[j] != ' ')
    ereport(ERROR,
      (errcode(ERRCODE_STRING_DATA_RIGHT_TRUNCATION),
       errmsg("value too long for type character varying(%d)",
        (int) maxlen)));
  }

  len = mbmaxlen;
 }

 result = (VarChar *) cstring_to_text_with_len(s, len);
 return result;
}
