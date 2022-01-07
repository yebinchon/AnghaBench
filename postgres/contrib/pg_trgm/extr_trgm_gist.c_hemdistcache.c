
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sign; scalar_t__ allistrue; } ;
typedef TYPE_1__ CACHESIGN ;


 int SIGLENBIT ;
 int hemdistsign (int ,int ) ;
 int sizebitvec (int ) ;

__attribute__((used)) static int
hemdistcache(CACHESIGN *a, CACHESIGN *b)
{
 if (a->allistrue)
 {
  if (b->allistrue)
   return 0;
  else
   return SIGLENBIT - sizebitvec(b->sign);
 }
 else if (b->allistrue)
  return SIGLENBIT - sizebitvec(a->sign);

 return hemdistsign(a->sign, b->sign);
}
