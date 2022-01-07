
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short* table; unsigned int* trans; } ;
typedef TYPE_1__ TINF_TREE ;


 int TINF_ARRAY_SIZE (unsigned short*) ;
 int UZLIB_DUMP_ARRAY (char*,unsigned short*,int ) ;

__attribute__((used)) static void tinf_build_tree(TINF_TREE *t, const unsigned char *lengths, unsigned int num)
{
   unsigned short offs[16];
   unsigned int i, sum;


   for (i = 0; i < 16; ++i) t->table[i] = 0;


   for (i = 0; i < num; ++i) t->table[lengths[i]]++;
   t->table[0] = 0;


   for (sum = 0, i = 0; i < 16; ++i)
   {
      offs[i] = sum;
      sum += t->table[i];
   }






   for (i = 0; i < num; ++i)
   {
      if (lengths[i]) t->trans[offs[lengths[i]]++] = i;
   }
}
