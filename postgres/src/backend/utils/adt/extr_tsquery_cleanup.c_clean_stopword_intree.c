
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* valnode; struct TYPE_10__* left; struct TYPE_10__* right; } ;
struct TYPE_8__ {scalar_t__ oper; int distance; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_3__ NODE ;


 int Assert (int) ;
 int Max (int,int) ;
 scalar_t__ OP_NOT ;
 scalar_t__ OP_PHRASE ;
 scalar_t__ QI_OPR ;
 scalar_t__ QI_VAL ;
 scalar_t__ QI_VALSTOP ;
 int check_stack_depth () ;
 int freetree (TYPE_3__*) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static NODE *
clean_stopword_intree(NODE *node, int *ladd, int *radd)
{

 check_stack_depth();


 *ladd = *radd = 0;

 if (node->valnode->type == QI_VAL)
  return node;
 else if (node->valnode->type == QI_VALSTOP)
 {
  pfree(node);
  return ((void*)0);
 }

 Assert(node->valnode->type == QI_OPR);

 if (node->valnode->qoperator.oper == OP_NOT)
 {

  node->right = clean_stopword_intree(node->right, ladd, radd);
  if (!node->right)
  {
   freetree(node);
   return ((void*)0);
  }
 }
 else
 {
  NODE *res = node;
  bool isphrase;
  int ndistance,
     lladd,
     lradd,
     rladd,
     rradd;


  node->left = clean_stopword_intree(node->left, &lladd, &lradd);
  node->right = clean_stopword_intree(node->right, &rladd, &rradd);


  isphrase = (node->valnode->qoperator.oper == OP_PHRASE);
  ndistance = isphrase ? node->valnode->qoperator.distance : 0;

  if (node->left == ((void*)0) && node->right == ((void*)0))
  {
   if (isphrase)
    *ladd = *radd = lladd + ndistance + rladd;
   else
    *ladd = *radd = Max(lladd, rladd);
   freetree(node);
   return ((void*)0);
  }
  else if (node->left == ((void*)0))
  {


   if (isphrase)
   {

    *ladd = lladd + ndistance + rladd;
    *radd = rradd;
   }
   else
   {

    *ladd = rladd;
    *radd = rradd;
   }
   res = node->right;
   pfree(node);
  }
  else if (node->right == ((void*)0))
  {


   if (isphrase)
   {

    *ladd = lladd;
    *radd = lradd + ndistance + rradd;
   }
   else
   {

    *ladd = lladd;
    *radd = lradd;
   }
   res = node->left;
   pfree(node);
  }
  else if (isphrase)
  {

   node->valnode->qoperator.distance += lradd + rladd;

   *ladd = lladd;
   *radd = rradd;
  }
  else
  {

  }

  return res;
 }
 return node;
}
