
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {scalar_t__* now; int cflags; } ;
typedef scalar_t__ chr ;


 scalar_t__ ATEOS () ;
 scalar_t__ CHR (char) ;
 int NEXT1 (char) ;
 int NOTE (int ) ;
 int REG_EXPANDED ;
 int REG_UNONPOSIX ;
 int assert (int) ;
 scalar_t__ iscspace (scalar_t__) ;

__attribute__((used)) static void
skip(struct vars *v)
{
 const chr *start = v->now;

 assert(v->cflags & REG_EXPANDED);

 for (;;)
 {
  while (!ATEOS() && iscspace(*v->now))
   v->now++;
  if (ATEOS() || *v->now != CHR('#'))
   break;
  assert(NEXT1('#'));
  while (!ATEOS() && *v->now != CHR('\n'))
   v->now++;

 }

 if (v->now != start)
  NOTE(REG_UNONPOSIX);
}
