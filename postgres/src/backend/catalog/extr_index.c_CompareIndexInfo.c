
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ii_Unique; scalar_t__ ii_Am; int ii_NumIndexAttrs; int ii_NumIndexKeyAttrs; int* ii_IndexAttrNumbers; scalar_t__ ii_Expressions; scalar_t__ ii_Predicate; int * ii_ExclusionOps; } ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef TYPE_1__ IndexInfo ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 scalar_t__ NIL ;
 int elog (int ,char*) ;
 int equal (scalar_t__,int *) ;
 int * map_variable_attnos (int *,int,int ,scalar_t__*,int,int ,int*) ;

bool
CompareIndexInfo(IndexInfo *info1, IndexInfo *info2,
     Oid *collations1, Oid *collations2,
     Oid *opfamilies1, Oid *opfamilies2,
     AttrNumber *attmap, int maplen)
{
 int i;

 if (info1->ii_Unique != info2->ii_Unique)
  return 0;


 if (info1->ii_Am != info2->ii_Am)
  return 0;


 if (info1->ii_NumIndexAttrs != info2->ii_NumIndexAttrs)
  return 0;


 if (info1->ii_NumIndexKeyAttrs != info2->ii_NumIndexKeyAttrs)
  return 0;







 for (i = 0; i < info1->ii_NumIndexAttrs; i++)
 {
  if (maplen < info2->ii_IndexAttrNumbers[i])
   elog(ERROR, "incorrect attribute map");


  if ((info1->ii_IndexAttrNumbers[i] != InvalidAttrNumber) &&
   (attmap[info2->ii_IndexAttrNumbers[i] - 1] !=
    info1->ii_IndexAttrNumbers[i]))
   return 0;


  if (i >= info1->ii_NumIndexKeyAttrs)
   continue;

  if (collations1[i] != collations2[i])
   return 0;
  if (opfamilies1[i] != opfamilies2[i])
   return 0;
 }





 if ((info1->ii_Expressions != NIL) != (info2->ii_Expressions != NIL))
  return 0;
 if (info1->ii_Expressions != NIL)
 {
  bool found_whole_row;
  Node *mapped;

  mapped = map_variable_attnos((Node *) info2->ii_Expressions,
          1, 0, attmap, maplen,
          InvalidOid, &found_whole_row);
  if (found_whole_row)
  {




   return 0;
  }

  if (!equal(info1->ii_Expressions, mapped))
   return 0;
 }


 if ((info1->ii_Predicate == ((void*)0)) != (info2->ii_Predicate == ((void*)0)))
  return 0;
 if (info1->ii_Predicate != ((void*)0))
 {
  bool found_whole_row;
  Node *mapped;

  mapped = map_variable_attnos((Node *) info2->ii_Predicate,
          1, 0, attmap, maplen,
          InvalidOid, &found_whole_row);
  if (found_whole_row)
  {




   return 0;
  }
  if (!equal(info1->ii_Predicate, mapped))
   return 0;
 }


 if (info1->ii_ExclusionOps != ((void*)0) || info2->ii_ExclusionOps != ((void*)0))
  return 0;

 return 1;
}
