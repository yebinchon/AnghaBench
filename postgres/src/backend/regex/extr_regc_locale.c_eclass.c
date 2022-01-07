
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int cflags; } ;
struct cvec {int dummy; } ;
typedef char chr ;


 char CHR (char) ;
 int REG_FAKE ;
 int addchr (struct cvec*,char) ;
 struct cvec* allcases (struct vars*,char) ;
 int assert (int ) ;
 struct cvec* getcvec (struct vars*,int,int ) ;

__attribute__((used)) static struct cvec *
eclass(struct vars *v,
    chr c,

    int cases)
{
 struct cvec *cv;


 if ((v->cflags & REG_FAKE) && c == 'x')
 {
  cv = getcvec(v, 4, 0);
  addchr(cv, CHR('x'));
  addchr(cv, CHR('y'));
  if (cases)
  {
   addchr(cv, CHR('X'));
   addchr(cv, CHR('Y'));
  }
  return cv;
 }


 if (cases)
  return allcases(v, c);
 cv = getcvec(v, 1, 0);
 assert(cv != ((void*)0));
 addchr(cv, c);
 return cv;
}
