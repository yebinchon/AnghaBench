
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_11__ {scalar_t__ pos; scalar_t__ len; scalar_t__ haspos; } ;
typedef TYPE_1__ WordEntry ;
struct TYPE_13__ {int ndoc; int nentry; struct TYPE_13__* right; struct TYPE_13__* left; scalar_t__ lenlexeme; int lexeme; } ;
struct TYPE_12__ {int maxdepth; TYPE_3__* root; int weight; } ;
typedef TYPE_2__ TSVectorStat ;
typedef int TSVector ;
typedef TYPE_3__ StatEntry ;
typedef int MemoryContext ;


 TYPE_1__* ARRPTR (int ) ;
 TYPE_3__* MemoryContextAlloc (int ,scalar_t__) ;
 int POSDATALEN (int ,TYPE_1__*) ;
 scalar_t__ STATENTRYHDRSZ ;
 scalar_t__ STRPTR (int ) ;
 int check_weight (int ,TYPE_1__*,int ) ;
 int compareStatWord (TYPE_3__*,TYPE_1__*,int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
insertStatEntry(MemoryContext persistentContext, TSVectorStat *stat, TSVector txt, uint32 off)
{
 WordEntry *we = ARRPTR(txt) + off;
 StatEntry *node = stat->root,
      *pnode = ((void*)0);
 int n,
    res = 0;
 uint32 depth = 1;

 if (stat->weight == 0)
  n = (we->haspos) ? POSDATALEN(txt, we) : 1;
 else
  n = (we->haspos) ? check_weight(txt, we, stat->weight) : 0;

 if (n == 0)
  return;

 while (node)
 {
  res = compareStatWord(node, we, txt);

  if (res == 0)
  {
   break;
  }
  else
  {
   pnode = node;
   node = (res < 0) ? node->left : node->right;
  }
  depth++;
 }

 if (depth > stat->maxdepth)
  stat->maxdepth = depth;

 if (node == ((void*)0))
 {
  node = MemoryContextAlloc(persistentContext, STATENTRYHDRSZ + we->len);
  node->left = node->right = ((void*)0);
  node->ndoc = 1;
  node->nentry = n;
  node->lenlexeme = we->len;
  memcpy(node->lexeme, STRPTR(txt) + we->pos, node->lenlexeme);

  if (pnode == ((void*)0))
  {
   stat->root = node;
  }
  else
  {
   if (res < 0)
    pnode->left = node;
   else
    pnode->right = node;
  }

 }
 else
 {
  node->ndoc++;
  node->nentry += n;
 }
}
