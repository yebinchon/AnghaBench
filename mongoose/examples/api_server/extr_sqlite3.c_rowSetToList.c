
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct RowSetEntry {int dummy; } ;
struct TYPE_5__ {int rsFlags; TYPE_1__* pForest; int pEntry; } ;
struct TYPE_4__ {struct TYPE_4__* pRight; struct RowSetEntry* pLeft; } ;
typedef TYPE_2__ RowSet ;


 int ROWSET_NEXT ;
 int ROWSET_SORTED ;
 int assert (int) ;
 int rowSetEntryMerge (int ,struct RowSetEntry*) ;
 int rowSetEntrySort (int ) ;
 int rowSetTreeToList (struct RowSetEntry*,struct RowSetEntry**,struct RowSetEntry**) ;

__attribute__((used)) static void rowSetToList(RowSet *p){


  assert( p!=0 && (p->rsFlags & ROWSET_NEXT)==0 );

  if( (p->rsFlags & ROWSET_SORTED)==0 ){
    p->pEntry = rowSetEntrySort(p->pEntry);
  }





  assert( p->pForest==0 );
  p->rsFlags |= ROWSET_NEXT;
}
