
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int SET_VARSIZE (int *,scalar_t__) ;
 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int memcpy (int ,char const*,int) ;
 scalar_t__ palloc (scalar_t__) ;

text *
cstring_to_text_with_len(const char *s, int len)
{
 text *result = (text *) palloc(len + VARHDRSZ);

 SET_VARSIZE(result, len + VARHDRSZ);
 memcpy(VARDATA(result), s, len);

 return result;
}
