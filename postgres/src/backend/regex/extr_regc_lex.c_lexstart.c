
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int cflags; int nexttype; } ;


 int EMPTY ;
 int INTOCON (int ) ;
 int L_BRE ;
 int L_ERE ;
 int L_Q ;
 int NOERR () ;
 int REG_ADVANCED ;
 int REG_ADVF ;
 int REG_EXPANDED ;
 int REG_EXTENDED ;
 int REG_NEWLINE ;
 int REG_QUOTE ;
 int assert (int) ;
 int next (struct vars*) ;
 int prefixes (struct vars*) ;

__attribute__((used)) static void
lexstart(struct vars *v)
{
 prefixes(v);
 NOERR();

 if (v->cflags & REG_QUOTE)
 {
  assert(!(v->cflags & (REG_ADVANCED | REG_EXPANDED | REG_NEWLINE)));
  INTOCON(L_Q);
 }
 else if (v->cflags & REG_EXTENDED)
 {
  assert(!(v->cflags & REG_QUOTE));
  INTOCON(L_ERE);
 }
 else
 {
  assert(!(v->cflags & (REG_QUOTE | REG_ADVF)));
  INTOCON(L_BRE);
 }

 v->nexttype = EMPTY;
 next(v);
}
