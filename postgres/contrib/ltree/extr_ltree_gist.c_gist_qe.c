
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ltree_gist ;
struct TYPE_14__ {int val; } ;
typedef TYPE_1__ lquery_variant ;
struct TYPE_15__ {int numvar; } ;
typedef TYPE_2__ lquery_level ;
struct TYPE_16__ {int numlevel; } ;
typedef TYPE_3__ lquery ;
typedef int BITVECP ;


 scalar_t__ GETBIT (int ,int ) ;
 int HASHVAL (int ) ;
 scalar_t__ LQL_CANLOOKSIGN (TYPE_2__*) ;
 TYPE_1__* LQL_FIRST (TYPE_2__*) ;
 TYPE_2__* LQL_NEXT (TYPE_2__*) ;
 TYPE_2__* LQUERY_FIRST (TYPE_3__*) ;
 scalar_t__ LTG_ISALLTRUE (int *) ;
 int LTG_SIGN (int *) ;
 TYPE_1__* LVAR_NEXT (TYPE_1__*) ;

__attribute__((used)) static bool
gist_qe(ltree_gist *key, lquery *query)
{
 lquery_level *curq = LQUERY_FIRST(query);
 BITVECP sign = LTG_SIGN(key);
 int qlen = query->numlevel;

 if (LTG_ISALLTRUE(key))
  return 1;

 while (qlen > 0)
 {
  if (curq->numvar && LQL_CANLOOKSIGN(curq))
  {
   bool isexist = 0;
   int vlen = curq->numvar;
   lquery_variant *curv = LQL_FIRST(curq);

   while (vlen > 0)
   {
    if (GETBIT(sign, HASHVAL(curv->val)))
    {
     isexist = 1;
     break;
    }
    curv = LVAR_NEXT(curv);
    vlen--;
   }
   if (!isexist)
    return 0;
  }

  curq = LQL_NEXT(curq);
  qlen--;
 }

 return 1;
}
