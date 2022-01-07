
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_locale_t ;


 int ERRCODE_INVALID_ESCAPE_SEQUENCE ;
 int ERROR ;
 char GETCHAR (char const) ;
 int LIKE_ABORT ;
 int LIKE_FALSE ;
 int LIKE_TRUE ;
 int NextByte (char const*,int) ;
 int NextChar (char const*,int) ;
 int check_stack_depth () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static int
MatchText(const char *t, int tlen, const char *p, int plen,
    pg_locale_t locale, bool locale_is_c)
{

 if (plen == 1 && *p == '%')
  return LIKE_TRUE;


 check_stack_depth();
 while (tlen > 0 && plen > 0)
 {
  if (*p == '\\')
  {

   NextByte(p, plen);

   if (plen <= 0)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_ESCAPE_SEQUENCE),
       errmsg("LIKE pattern must not end with escape character")));
   if (GETCHAR(*p) != GETCHAR(*t))
    return LIKE_FALSE;
  }
  else if (*p == '%')
  {
   char firstpat;
   NextByte(p, plen);

   while (plen > 0)
   {
    if (*p == '%')
     NextByte(p, plen);
    else if (*p == '_')
    {

     if (tlen <= 0)
      return LIKE_ABORT;
     NextChar(t, tlen);
     NextByte(p, plen);
    }
    else
     break;
   }





   if (plen <= 0)
    return LIKE_TRUE;
   if (*p == '\\')
   {
    if (plen < 2)
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_ESCAPE_SEQUENCE),
        errmsg("LIKE pattern must not end with escape character")));
    firstpat = GETCHAR(p[1]);
   }
   else
    firstpat = GETCHAR(*p);

   while (tlen > 0)
   {
    if (GETCHAR(*t) == firstpat)
    {
     int matched = MatchText(t, tlen, p, plen,
             locale, locale_is_c);

     if (matched != LIKE_FALSE)
      return matched;
    }

    NextChar(t, tlen);
   }





   return LIKE_ABORT;
  }
  else if (*p == '_')
  {

   NextChar(t, tlen);
   NextByte(p, plen);
   continue;
  }
  else if (GETCHAR(*p) != GETCHAR(*t))
  {

   return LIKE_FALSE;
  }
  NextByte(t, tlen);
  NextByte(p, plen);
 }

 if (tlen > 0)
  return LIKE_FALSE;





 while (plen > 0 && *p == '%')
  NextByte(p, plen);
 if (plen <= 0)
  return LIKE_TRUE;





 return LIKE_ABORT;
}
