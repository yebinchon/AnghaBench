
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* table; int* trans; } ;
typedef TYPE_1__ UZLIB_TREE ;
typedef int UZLIB_DATA ;


 int SIZE (int*) ;
 int UZLIB_DATA_ERROR ;
 int getbit (int *) ;

__attribute__((used)) static int decode_symbol (UZLIB_DATA *d, UZLIB_TREE *t) {
  int sum = 0, cur = 0, len = 0;


  do {
    cur = 2*cur + getbit(d);

    if (++len == SIZE(t->table))
      return UZLIB_DATA_ERROR;

    sum += t->table[len];
    cur -= t->table[len];

  } while (cur >= 0);

  sum += cur;
  if (sum < 0 || sum >= SIZE(t->trans))
    return UZLIB_DATA_ERROR;

  return t->trans[sum];
}
