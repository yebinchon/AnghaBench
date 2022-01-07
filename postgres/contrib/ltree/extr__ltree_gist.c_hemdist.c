
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ltree_gist ;


 int ASIGLENBIT ;
 scalar_t__ LTG_ISALLTRUE (int *) ;
 int LTG_SIGN (int *) ;
 int hemdistsign (int ,int ) ;
 int sizebitvec (int ) ;

__attribute__((used)) static int
hemdist(ltree_gist *a, ltree_gist *b)
{
 if (LTG_ISALLTRUE(a))
 {
  if (LTG_ISALLTRUE(b))
   return 0;
  else
   return ASIGLENBIT - sizebitvec(LTG_SIGN(b));
 }
 else if (LTG_ISALLTRUE(b))
  return ASIGLENBIT - sizebitvec(LTG_SIGN(a));

 return hemdistsign(LTG_SIGN(a), LTG_SIGN(b));
}
