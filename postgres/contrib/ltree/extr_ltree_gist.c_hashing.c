
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int name; } ;
typedef TYPE_1__ ltree_level ;
struct TYPE_9__ {int numlevel; } ;
typedef TYPE_2__ ltree ;
typedef int BITVECP ;


 int HASH (int ,int) ;
 TYPE_1__* LEVEL_NEXT (TYPE_1__*) ;
 TYPE_1__* LTREE_FIRST (TYPE_2__*) ;
 int ltree_crc32_sz (int ,int ) ;

__attribute__((used)) static void
hashing(BITVECP sign, ltree *t)
{
 int tlen = t->numlevel;
 ltree_level *cur = LTREE_FIRST(t);
 int hash;

 while (tlen > 0)
 {
  hash = ltree_crc32_sz(cur->name, cur->len);
  HASH(sign, hash);
  cur = LEVEL_NEXT(cur);
  tlen--;
 }
}
