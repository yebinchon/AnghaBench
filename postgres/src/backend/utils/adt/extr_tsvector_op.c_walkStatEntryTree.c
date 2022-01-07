
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ndoc; struct TYPE_6__* left; struct TYPE_6__* right; } ;
struct TYPE_5__ {size_t stackpos; size_t maxdepth; TYPE_2__** stack; } ;
typedef TYPE_1__ TSVectorStat ;
typedef TYPE_2__ StatEntry ;


 int Assert (int) ;

__attribute__((used)) static StatEntry *
walkStatEntryTree(TSVectorStat *stat)
{
 StatEntry *node = stat->stack[stat->stackpos];

 if (node == ((void*)0))
  return ((void*)0);

 if (node->ndoc != 0)
 {

  return node;
 }
 else if (node->right && node->right != stat->stack[stat->stackpos + 1])
 {

  stat->stackpos++;
  node = node->right;


  for (;;)
  {
   stat->stack[stat->stackpos] = node;
   if (node->left)
   {
    stat->stackpos++;
    node = node->left;
   }
   else
    break;
  }
  Assert(stat->stackpos <= stat->maxdepth);
 }
 else
 {

  if (stat->stackpos == 0)
   return ((void*)0);

  stat->stackpos--;
  return walkStatEntryTree(stat);
 }

 return node;
}
