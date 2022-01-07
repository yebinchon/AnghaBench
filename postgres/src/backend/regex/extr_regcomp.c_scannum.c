
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int nextvalue; } ;


 int DIGIT ;
 int DUPMAX ;
 int ERR (int ) ;
 int NEXT () ;
 int REG_BADBR ;
 scalar_t__ SEE (int ) ;

__attribute__((used)) static int
scannum(struct vars *v)
{
 int n = 0;

 while (SEE(DIGIT) && n < DUPMAX)
 {
  n = n * 10 + v->nextvalue;
  NEXT();
 }
 if (SEE(DIGIT) || n > DUPMAX)
 {
  ERR(REG_BADBR);
  return 0;
 }
 return n;
}
