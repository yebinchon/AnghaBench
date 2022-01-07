
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct cvec {int dummy; } ;
typedef scalar_t__ chr ;


 int addchr (struct cvec*,scalar_t__) ;
 struct cvec* getcvec (struct vars*,int,int ) ;
 scalar_t__ pg_wc_tolower (scalar_t__) ;
 scalar_t__ pg_wc_toupper (scalar_t__) ;

__attribute__((used)) static struct cvec *
allcases(struct vars *v,
   chr c)
{
 struct cvec *cv;
 chr lc,
    uc;

 lc = pg_wc_tolower(c);
 uc = pg_wc_toupper(c);

 cv = getcvec(v, 2, 0);
 addchr(cv, lc);
 if (lc != uc)
  addchr(cv, uc);
 return cv;
}
