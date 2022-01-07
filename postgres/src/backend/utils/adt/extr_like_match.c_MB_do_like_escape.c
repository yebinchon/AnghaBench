
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 scalar_t__ CHAREQ (char*,char*) ;
 int CopyAdvChar (char*,char*,int) ;
 int ERRCODE_INVALID_ESCAPE_SEQUENCE ;
 int ERROR ;
 int NextChar (char*,int) ;
 int SET_VARSIZE (int *,int) ;
 char* VARDATA (int *) ;
 char* VARDATA_ANY (int *) ;
 scalar_t__ VARHDRSZ ;
 int VARSIZE_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ palloc (scalar_t__) ;

__attribute__((used)) static text *
do_like_escape(text *pat, text *esc)
{
 text *result;
 char *p,
      *e,
      *r;
 int plen,
    elen;
 bool afterescape;

 p = VARDATA_ANY(pat);
 plen = VARSIZE_ANY_EXHDR(pat);
 e = VARDATA_ANY(esc);
 elen = VARSIZE_ANY_EXHDR(esc);





 result = (text *) palloc(plen * 2 + VARHDRSZ);
 r = VARDATA(result);

 if (elen == 0)
 {




  while (plen > 0)
  {
   if (*p == '\\')
    *r++ = '\\';
   CopyAdvChar(r, p, plen);
  }
 }
 else
 {



  NextChar(e, elen);
  if (elen != 0)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_ESCAPE_SEQUENCE),
      errmsg("invalid escape string"),
      errhint("Escape string must be empty or one character.")));

  e = VARDATA_ANY(esc);




  if (*e == '\\')
  {
   memcpy(result, pat, VARSIZE_ANY(pat));
   return result;
  }






  afterescape = 0;
  while (plen > 0)
  {
   if (CHAREQ(p, e) && !afterescape)
   {
    *r++ = '\\';
    NextChar(p, plen);
    afterescape = 1;
   }
   else if (*p == '\\')
   {
    *r++ = '\\';
    if (!afterescape)
     *r++ = '\\';
    NextChar(p, plen);
    afterescape = 0;
   }
   else
   {
    CopyAdvChar(r, p, plen);
    afterescape = 0;
   }
  }
 }

 SET_VARSIZE(result, r - ((char *) result));

 return result;
}
