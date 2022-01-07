
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {int fn_oid; } ;
struct TYPE_12__ {TYPE_10__ eq_opr_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_13__ {scalar_t__* tts_isnull; int * tts_values; TYPE_9__* tts_tupleDescriptor; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_15__ {int natts; } ;
struct TYPE_14__ {int attcollation; int atttypid; } ;
typedef TYPE_3__* Form_pg_attribute ;


 int Assert (int) ;
 int DatumGetBool (int ) ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int FunctionCall2Coll (TYPE_10__*,int ,int ,int ) ;
 int OidIsValid (int ) ;
 int TYPECACHE_EQ_OPR_FINFO ;
 TYPE_3__* TupleDescAttr (TYPE_9__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 TYPE_1__* lookup_type_cache (int ,int ) ;
 int slot_getallattrs (TYPE_2__*) ;

__attribute__((used)) static bool
tuples_equal(TupleTableSlot *slot1, TupleTableSlot *slot2)
{
 int attrnum;

 Assert(slot1->tts_tupleDescriptor->natts ==
     slot2->tts_tupleDescriptor->natts);

 slot_getallattrs(slot1);
 slot_getallattrs(slot2);


 for (attrnum = 0; attrnum < slot1->tts_tupleDescriptor->natts; attrnum++)
 {
  Form_pg_attribute att;
  TypeCacheEntry *typentry;





  if (slot1->tts_isnull[attrnum] != slot2->tts_isnull[attrnum])
   return 0;




  if (slot1->tts_isnull[attrnum] || slot2->tts_isnull[attrnum])
   continue;

  att = TupleDescAttr(slot1->tts_tupleDescriptor, attrnum);

  typentry = lookup_type_cache(att->atttypid, TYPECACHE_EQ_OPR_FINFO);
  if (!OidIsValid(typentry->eq_opr_finfo.fn_oid))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_FUNCTION),
      errmsg("could not identify an equality operator for type %s",
       format_type_be(att->atttypid))));

  if (!DatumGetBool(FunctionCall2Coll(&typentry->eq_opr_finfo,
           att->attcollation,
           slot1->tts_values[attrnum],
           slot2->tts_values[attrnum])))
   return 0;
 }

 return 1;
}
