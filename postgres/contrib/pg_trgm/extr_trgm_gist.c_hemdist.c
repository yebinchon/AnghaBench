
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRGM ;


 int GETSIGN (int *) ;
 scalar_t__ ISALLTRUE (int *) ;
 int SIGLENBIT ;
 int hemdistsign (int ,int ) ;
 int sizebitvec (int ) ;

__attribute__((used)) static int
hemdist(TRGM *a, TRGM *b)
{
 if (ISALLTRUE(a))
 {
  if (ISALLTRUE(b))
   return 0;
  else
   return SIGLENBIT - sizebitvec(GETSIGN(b));
 }
 else if (ISALLTRUE(b))
  return SIGLENBIT - sizebitvec(GETSIGN(a));

 return hemdistsign(GETSIGN(a), GETSIGN(b));
}
