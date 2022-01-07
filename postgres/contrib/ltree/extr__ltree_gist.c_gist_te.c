
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int name; } ;
typedef TYPE_1__ ltree_level ;
typedef int ltree_gist ;
struct TYPE_9__ {int numlevel; } ;
typedef TYPE_2__ ltree ;
typedef int BITVECP ;


 int AHASHVAL (unsigned int) ;
 int GETBIT (int ,int ) ;
 TYPE_1__* LEVEL_NEXT (TYPE_1__*) ;
 scalar_t__ LTG_ISALLTRUE (int *) ;
 int LTG_SIGN (int *) ;
 TYPE_1__* LTREE_FIRST (TYPE_2__*) ;
 unsigned int ltree_crc32_sz (int ,int ) ;

__attribute__((used)) static bool
gist_te(ltree_gist *key, ltree *query)
{
 ltree_level *curq = LTREE_FIRST(query);
 BITVECP sign = LTG_SIGN(key);
 int qlen = query->numlevel;
 unsigned int hv;

 if (LTG_ISALLTRUE(key))
  return 1;

 while (qlen > 0)
 {
  hv = ltree_crc32_sz(curq->name, curq->len);
  if (!GETBIT(sign, AHASHVAL(hv)))
   return 0;
  curq = LEVEL_NEXT(curq);
  qlen--;
 }

 return 1;
}
