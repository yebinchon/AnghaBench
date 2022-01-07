
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int re; } ;
struct cvec {scalar_t__ nchrs; scalar_t__ chrspace; } ;
typedef scalar_t__ chr ;


 scalar_t__ CANCEL_REQUESTED (int ) ;
 int ERR (int ) ;
 int NOERRN () ;
 int REG_CANCEL ;
 int REG_ERANGE ;
 int REG_ETOOBIG ;
 int addchr (struct cvec*,scalar_t__) ;
 int addrange (struct cvec*,scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;
 struct cvec* getcvec (struct vars*,int,int) ;
 scalar_t__ pg_wc_tolower (scalar_t__) ;
 scalar_t__ pg_wc_toupper (scalar_t__) ;

__attribute__((used)) static struct cvec *
range(struct vars *v,
   chr a,
   chr b,
   int cases)
{
 int nchrs;
 struct cvec *cv;
 chr c,
    cc;

 if (a != b && !before(a, b))
 {
  ERR(REG_ERANGE);
  return ((void*)0);
 }

 if (!cases)
 {
  cv = getcvec(v, 0, 1);
  NOERRN();
  addrange(cv, a, b);
  return cv;
 }
 nchrs = b - a + 1;
 if (nchrs <= 0 || nchrs > 100000)
  nchrs = 100000;

 cv = getcvec(v, nchrs, 1);
 NOERRN();
 addrange(cv, a, b);

 for (c = a; c <= b; c++)
 {
  cc = pg_wc_tolower(c);
  if (cc != c &&
   (before(cc, a) || before(b, cc)))
  {
   if (cv->nchrs >= cv->chrspace)
   {
    ERR(REG_ETOOBIG);
    return ((void*)0);
   }
   addchr(cv, cc);
  }
  cc = pg_wc_toupper(c);
  if (cc != c &&
   (before(cc, a) || before(b, cc)))
  {
   if (cv->nchrs >= cv->chrspace)
   {
    ERR(REG_ETOOBIG);
    return ((void*)0);
   }
   addchr(cv, cc);
  }
  if (CANCEL_REQUESTED(v->re))
  {
   ERR(REG_CANCEL);
   return ((void*)0);
  }
 }

 return cv;
}
