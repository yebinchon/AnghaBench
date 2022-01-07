
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISESCAPECHAR (char const*) ;
 scalar_t__ ISWILDCARDCHAR (char const*) ;
 scalar_t__ ISWORDCHR (char const*) ;
 int LPADDING ;
 int RPADDING ;
 int memcpy (char*,char const*,int) ;
 int pg_mblen (char const*) ;

__attribute__((used)) static const char *
get_wildcard_part(const char *str, int lenstr,
      char *buf, int *bytelen, int *charlen)
{
 const char *beginword = str;
 const char *endword;
 char *s = buf;
 bool in_leading_wildcard_meta = 0;
 bool in_trailing_wildcard_meta = 0;
 bool in_escape = 0;
 int clen;







 while (beginword - str < lenstr)
 {
  if (in_escape)
  {
   if (ISWORDCHR(beginword))
    break;
   in_escape = 0;
   in_leading_wildcard_meta = 0;
  }
  else
  {
   if (ISESCAPECHAR(beginword))
    in_escape = 1;
   else if (ISWILDCARDCHAR(beginword))
    in_leading_wildcard_meta = 1;
   else if (ISWORDCHR(beginword))
    break;
   else
    in_leading_wildcard_meta = 0;
  }
  beginword += pg_mblen(beginword);
 }




 if (beginword - str >= lenstr)
  return ((void*)0);





 *charlen = 0;
 if (!in_leading_wildcard_meta)
 {
  if (LPADDING > 0)
  {
   *s++ = ' ';
   (*charlen)++;
   if (LPADDING > 1)
   {
    *s++ = ' ';
    (*charlen)++;
   }
  }
 }





 endword = beginword;
 while (endword - str < lenstr)
 {
  clen = pg_mblen(endword);
  if (in_escape)
  {
   if (ISWORDCHR(endword))
   {
    memcpy(s, endword, clen);
    (*charlen)++;
    s += clen;
   }
   else
   {






    endword--;
    break;
   }
   in_escape = 0;
  }
  else
  {
   if (ISESCAPECHAR(endword))
    in_escape = 1;
   else if (ISWILDCARDCHAR(endword))
   {
    in_trailing_wildcard_meta = 1;
    break;
   }
   else if (ISWORDCHR(endword))
   {
    memcpy(s, endword, clen);
    (*charlen)++;
    s += clen;
   }
   else
    break;
  }
  endword += clen;
 }





 if (!in_trailing_wildcard_meta)
 {
  if (RPADDING > 0)
  {
   *s++ = ' ';
   (*charlen)++;
   if (RPADDING > 1)
   {
    *s++ = ' ';
    (*charlen)++;
   }
  }
 }

 *bytelen = s - buf;
 return endword;
}
