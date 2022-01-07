
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* table; int* trans; } ;
typedef TYPE_1__ TINF_TREE ;
typedef int TINF_DATA ;


 int TINF_ARRAY_SIZE (int*) ;
 int TINF_DATA_ERROR ;
 int tinf_getbit (int *) ;

__attribute__((used)) static int tinf_decode_symbol(TINF_DATA *d, TINF_TREE *t)
{
   int sum = 0, cur = 0, len = 0;


   do {

      cur = 2*cur + tinf_getbit(d);

      if (++len == TINF_ARRAY_SIZE(t->table)) {
         return TINF_DATA_ERROR;
      }

      sum += t->table[len];
      cur -= t->table[len];

   } while (cur >= 0);

   sum += cur;






   return t->trans[sum];
}
