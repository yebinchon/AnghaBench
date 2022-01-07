
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
typedef int uint ;
typedef size_t uchar ;
struct TYPE_3__ {int* table; int* trans; } ;
typedef TYPE_1__ UZLIB_TREE ;



__attribute__((used)) static void build_tree (UZLIB_TREE *t, const uchar *lengths, uint num) {
  ushort offs[16];
  uint i, sum;


  for (i = 0; i < 16; ++i)
    t->table[i] = 0;


  for (i = 0; i < num; ++i)
    t->table[lengths[i]]++;
  t->table[0] = 0;


  for (sum = 0, i = 0; i < 16; ++i) {
    offs[i] = sum;
    sum += t->table[i];
  }


  for (i = 0; i < num; ++i) {
    if (lengths[i])
      t->trans[offs[lengths[i]]++] = i;
  }
}
