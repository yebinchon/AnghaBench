
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint16 ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_14__ {int atttypmod; scalar_t__ atttypid; int attname; scalar_t__ attnum; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {scalar_t__ relreplident; } ;
typedef int StringInfo ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Bitmapset ;


 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 int INDEX_ATTR_BITMAP_IDENTITY_KEY ;
 int LOGICALREP_IS_REPLICA_IDENTITY ;
 int NameStr (int ) ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 TYPE_2__* RelationGetDescr (TYPE_3__*) ;
 int * RelationGetIndexAttrBitmap (TYPE_3__*,int ) ;
 TYPE_4__* TupleDescAttr (TYPE_2__*,int) ;
 int bms_free (int *) ;
 scalar_t__ bms_is_member (scalar_t__,int *) ;
 int pq_sendbyte (int ,int ) ;
 int pq_sendint16 (int ,scalar_t__) ;
 int pq_sendint32 (int ,int) ;
 int pq_sendstring (int ,int ) ;

__attribute__((used)) static void
logicalrep_write_attrs(StringInfo out, Relation rel)
{
 TupleDesc desc;
 int i;
 uint16 nliveatts = 0;
 Bitmapset *idattrs = ((void*)0);
 bool replidentfull;

 desc = RelationGetDescr(rel);


 for (i = 0; i < desc->natts; i++)
 {
  if (TupleDescAttr(desc, i)->attisdropped || TupleDescAttr(desc, i)->attgenerated)
   continue;
  nliveatts++;
 }
 pq_sendint16(out, nliveatts);


 replidentfull = (rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL);
 if (!replidentfull)
  idattrs = RelationGetIndexAttrBitmap(rel,
            INDEX_ATTR_BITMAP_IDENTITY_KEY);


 for (i = 0; i < desc->natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(desc, i);
  uint8 flags = 0;

  if (att->attisdropped || att->attgenerated)
   continue;


  if (replidentfull ||
   bms_is_member(att->attnum - FirstLowInvalidHeapAttributeNumber,
        idattrs))
   flags |= LOGICALREP_IS_REPLICA_IDENTITY;

  pq_sendbyte(out, flags);


  pq_sendstring(out, NameStr(att->attname));


  pq_sendint32(out, (int) att->atttypid);


  pq_sendint32(out, att->atttypmod);
 }

 bms_free(idattrs);
}
