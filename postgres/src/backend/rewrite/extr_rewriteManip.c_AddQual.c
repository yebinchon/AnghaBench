
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ commandType; int hasSubLinks; TYPE_1__* jointree; int * setOperations; scalar_t__ utilityStmt; } ;
struct TYPE_4__ {int quals; } ;
typedef TYPE_2__ Query ;
typedef int Node ;


 int Assert (int) ;
 scalar_t__ CMD_UTILITY ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ IsA (scalar_t__,int ) ;
 int NotifyStmt ;
 int checkExprHasSubLink (int *) ;
 int contain_aggs_of_level (int *,int ) ;
 int * copyObject (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int make_and_qual (int ,int *) ;

void
AddQual(Query *parsetree, Node *qual)
{
 Node *copy;

 if (qual == ((void*)0))
  return;

 if (parsetree->commandType == CMD_UTILITY)
 {
  if (parsetree->utilityStmt && IsA(parsetree->utilityStmt, NotifyStmt))
   return;
  else
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("conditional utility statements are not implemented")));
 }

 if (parsetree->setOperations != ((void*)0))
 {





  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("conditional UNION/INTERSECT/EXCEPT statements are not implemented")));
 }


 copy = copyObject(qual);

 parsetree->jointree->quals = make_and_qual(parsetree->jointree->quals,
              copy);




 Assert(!contain_aggs_of_level(copy, 0));





 if (!parsetree->hasSubLinks)
  parsetree->hasSubLinks = checkExprHasSubLink(copy);
}
