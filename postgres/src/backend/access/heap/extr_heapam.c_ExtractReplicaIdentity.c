
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_14__ {TYPE_1__* rd_rel; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_12__ {char relreplident; } ;
typedef TYPE_3__* Relation ;
typedef int * HeapTuple ;
typedef int Datum ;
typedef int Bitmapset ;


 int Assert (int) ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ HeapTupleHasExternal (int *) ;
 int INDEX_ATTR_BITMAP_IDENTITY_KEY ;
 int MaxHeapAttributeNumber ;
 char REPLICA_IDENTITY_FULL ;
 char REPLICA_IDENTITY_NOTHING ;
 TYPE_2__* RelationGetDescr (TYPE_3__*) ;
 int * RelationGetIndexAttrBitmap (TYPE_3__*,int ) ;
 int RelationIsLogicallyLogged (TYPE_3__*) ;
 int bms_free (int *) ;
 scalar_t__ bms_is_empty (int *) ;
 scalar_t__ bms_is_member (scalar_t__,int *) ;
 int heap_deform_tuple (int *,TYPE_2__*,int *,int*) ;
 int * heap_form_tuple (TYPE_2__*,int *,int*) ;
 int heap_freetuple (int *) ;
 int * toast_flatten_tuple (int *,TYPE_2__*) ;

__attribute__((used)) static HeapTuple
ExtractReplicaIdentity(Relation relation, HeapTuple tp, bool key_changed,
        bool *copy)
{
 TupleDesc desc = RelationGetDescr(relation);
 char replident = relation->rd_rel->relreplident;
 Bitmapset *idattrs;
 HeapTuple key_tuple;
 bool nulls[MaxHeapAttributeNumber];
 Datum values[MaxHeapAttributeNumber];

 *copy = 0;

 if (!RelationIsLogicallyLogged(relation))
  return ((void*)0);

 if (replident == REPLICA_IDENTITY_NOTHING)
  return ((void*)0);

 if (replident == REPLICA_IDENTITY_FULL)
 {




  if (HeapTupleHasExternal(tp))
  {
   *copy = 1;
   tp = toast_flatten_tuple(tp, desc);
  }
  return tp;
 }


 if (!key_changed)
  return ((void*)0);


 idattrs = RelationGetIndexAttrBitmap(relation,
           INDEX_ATTR_BITMAP_IDENTITY_KEY);







 if (bms_is_empty(idattrs))
  return ((void*)0);






 heap_deform_tuple(tp, desc, values, nulls);

 for (int i = 0; i < desc->natts; i++)
 {
  if (bms_is_member(i + 1 - FirstLowInvalidHeapAttributeNumber,
        idattrs))
   Assert(!nulls[i]);
  else
   nulls[i] = 1;
 }

 key_tuple = heap_form_tuple(desc, values, nulls);
 *copy = 1;

 bms_free(idattrs);
 if (HeapTupleHasExternal(key_tuple))
 {
  HeapTuple oldtup = key_tuple;

  key_tuple = toast_flatten_tuple(oldtup, desc);
  heap_freetuple(oldtup);
 }

 return key_tuple;
}
