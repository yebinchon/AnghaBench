
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Relation ;
typedef int RangeTblEntry ;
typedef int Node ;
typedef int List ;
typedef int Index ;
typedef int Bitmapset ;


 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 int * NIL ;
 int * bms_make_singleton (scalar_t__) ;
 int deparseTargetList (int ,int *,int ,int ,int,int *,int,int **) ;
 int pull_varattnos (int *,int ,int **) ;

__attribute__((used)) static void
deparseReturningList(StringInfo buf, RangeTblEntry *rte,
      Index rtindex, Relation rel,
      bool trig_after_row,
      List *withCheckOptionList,
      List *returningList,
      List **retrieved_attrs)
{
 Bitmapset *attrs_used = ((void*)0);

 if (trig_after_row)
 {

  attrs_used =
   bms_make_singleton(0 - FirstLowInvalidHeapAttributeNumber);
 }

 if (withCheckOptionList != NIL)
 {
  pull_varattnos((Node *) withCheckOptionList, rtindex,
        &attrs_used);
 }

 if (returningList != NIL)
 {




  pull_varattnos((Node *) returningList, rtindex,
        &attrs_used);
 }

 if (attrs_used != ((void*)0))
  deparseTargetList(buf, rte, rtindex, rel, 1, attrs_used, 0,
        retrieved_attrs);
 else
  *retrieved_attrs = NIL;
}
