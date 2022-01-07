
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_pkindex; int rd_indexvalid; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int List ;


 int Assert (int ) ;
 int * RelationGetIndexList (TYPE_1__*) ;
 int list_free (int *) ;

Oid
RelationGetPrimaryKeyIndex(Relation relation)
{
 List *ilist;

 if (!relation->rd_indexvalid)
 {

  ilist = RelationGetIndexList(relation);
  list_free(ilist);
  Assert(relation->rd_indexvalid);
 }

 return relation->rd_pkindex;
}
