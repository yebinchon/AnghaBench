
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attlen; scalar_t__ attalign; int atttypid; int attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 scalar_t__ IsBinaryCoercible (int ,int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int,...) ;
 int errdetail_plural (char*,char*,int,int,int) ;
 int errmsg (char*) ;
 int format_type_be (int ) ;

__attribute__((used)) static void
tupledesc_match(TupleDesc dst_tupdesc, TupleDesc src_tupdesc)
{
 int i;

 if (dst_tupdesc->natts != src_tupdesc->natts)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("function return row and query-specified return row do not match"),
     errdetail_plural("Returned row contains %d attribute, but query expects %d.",
          "Returned row contains %d attributes, but query expects %d.",
          src_tupdesc->natts,
          src_tupdesc->natts, dst_tupdesc->natts)));

 for (i = 0; i < dst_tupdesc->natts; i++)
 {
  Form_pg_attribute dattr = TupleDescAttr(dst_tupdesc, i);
  Form_pg_attribute sattr = TupleDescAttr(src_tupdesc, i);

  if (IsBinaryCoercible(sattr->atttypid, dattr->atttypid))
   continue;
  if (!dattr->attisdropped)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("function return row and query-specified return row do not match"),
      errdetail("Returned type %s at ordinal position %d, but query expects %s.",
          format_type_be(sattr->atttypid),
          i + 1,
          format_type_be(dattr->atttypid))));

  if (dattr->attlen != sattr->attlen ||
   dattr->attalign != sattr->attalign)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("function return row and query-specified return row do not match"),
      errdetail("Physical storage mismatch on dropped attribute at ordinal position %d.",
          i + 1)));
 }
}
