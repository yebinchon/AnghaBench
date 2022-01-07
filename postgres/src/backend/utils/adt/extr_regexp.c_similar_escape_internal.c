
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int ERRCODE_INVALID_ESCAPE_SEQUENCE ;
 int ERRCODE_INVALID_USE_OF_ESCAPE_CHARACTER ;
 int ERROR ;
 int SET_VARSIZE (int *,int) ;
 char* VARDATA (int *) ;
 char* VARDATA_ANY (int *) ;
 scalar_t__ VARHDRSZ ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc (scalar_t__) ;
 int pg_mblen (char*) ;
 int pg_mbstrlen_with_len (char*,int) ;

__attribute__((used)) static text *
similar_escape_internal(text *pat_text, text *esc_text)
{
 text *result;
 char *p,
      *e,
      *r;
 int plen,
    elen;
 bool afterescape = 0;
 bool incharclass = 0;
 int nquotes = 0;

 p = VARDATA_ANY(pat_text);
 plen = VARSIZE_ANY_EXHDR(pat_text);
 if (esc_text == ((void*)0))
 {

  e = "\\";
  elen = 1;
 }
 else
 {
  e = VARDATA_ANY(esc_text);
  elen = VARSIZE_ANY_EXHDR(esc_text);
  if (elen == 0)
   e = ((void*)0);
  else if (elen > 1)
  {
   int escape_mblen = pg_mbstrlen_with_len(e, elen);

   if (escape_mblen > 1)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_ESCAPE_SEQUENCE),
       errmsg("invalid escape string"),
       errhint("Escape string must be empty or one character.")));
  }
 }
 result = (text *) palloc(VARHDRSZ + 23 + 3 * (size_t) plen);
 r = VARDATA(result);

 *r++ = '^';
 *r++ = '(';
 *r++ = '?';
 *r++ = ':';

 while (plen > 0)
 {
  char pchar = *p;
  if (elen > 1)
  {
   int mblen = pg_mblen(p);

   if (mblen > 1)
   {

    if (afterescape)
    {
     *r++ = '\\';
     memcpy(r, p, mblen);
     r += mblen;
     afterescape = 0;
    }
    else if (e && elen == mblen && memcmp(e, p, mblen) == 0)
    {

     afterescape = 1;
    }
    else
    {





     memcpy(r, p, mblen);
     r += mblen;
    }

    p += mblen;
    plen -= mblen;

    continue;
   }
  }


  if (afterescape)
  {
   if (pchar == '"' && !incharclass)
   {

    if (nquotes == 0)
    {
     *r++ = ')';
     *r++ = '{';
     *r++ = '1';
     *r++ = ',';
     *r++ = '1';
     *r++ = '}';
     *r++ = '?';
     *r++ = '(';
    }
    else if (nquotes == 1)
    {
     *r++ = ')';
     *r++ = '{';
     *r++ = '1';
     *r++ = ',';
     *r++ = '1';
     *r++ = '}';
     *r++ = '(';
     *r++ = '?';
     *r++ = ':';
    }
    else
     ereport(ERROR,
       (errcode(ERRCODE_INVALID_USE_OF_ESCAPE_CHARACTER),
        errmsg("SQL regular expression may not contain more than two escape-double-quote separators")));
    nquotes++;
   }
   else
   {





    *r++ = '\\';
    *r++ = pchar;
   }
   afterescape = 0;
  }
  else if (e && pchar == *e)
  {

   afterescape = 1;
  }
  else if (incharclass)
  {
   if (pchar == '\\')
    *r++ = '\\';
   *r++ = pchar;
   if (pchar == ']')
    incharclass = 0;
  }
  else if (pchar == '[')
  {
   *r++ = pchar;
   incharclass = 1;
  }
  else if (pchar == '%')
  {
   *r++ = '.';
   *r++ = '*';
  }
  else if (pchar == '_')
   *r++ = '.';
  else if (pchar == '(')
  {

   *r++ = '(';
   *r++ = '?';
   *r++ = ':';
  }
  else if (pchar == '\\' || pchar == '.' ||
     pchar == '^' || pchar == '$')
  {
   *r++ = '\\';
   *r++ = pchar;
  }
  else
   *r++ = pchar;
  p++, plen--;
 }

 *r++ = ')';
 *r++ = '$';

 SET_VARSIZE(result, r - ((char *) result));

 return result;
}
