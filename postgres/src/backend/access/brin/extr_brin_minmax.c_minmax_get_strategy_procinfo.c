
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_16__ {int bd_context; int bd_tupdesc; TYPE_2__* bd_index; TYPE_1__** bd_info; } ;
struct TYPE_15__ {scalar_t__ fn_oid; } ;
struct TYPE_14__ {scalar_t__ atttypid; } ;
struct TYPE_13__ {scalar_t__ cached_subtype; TYPE_5__* strategy_procinfos; } ;
struct TYPE_12__ {scalar_t__* rd_opfamily; } ;
struct TYPE_11__ {scalar_t__ oi_opaque; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ MinmaxOpaque ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_attribute ;
typedef TYPE_5__ FmgrInfo ;
typedef TYPE_6__ BrinDesc ;


 int AMOPSTRATEGY ;
 int Anum_pg_amop_amopopr ;
 int Assert (int) ;
 int BTMaxStrategyNumber ;
 scalar_t__ DatumGetObjectId (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int) ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RegProcedureIsValid (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache4 (int ,int ,int ,int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 TYPE_4__* TupleDescAttr (int ,int) ;
 int elog (int ,char*,int,scalar_t__,scalar_t__,scalar_t__) ;
 int fmgr_info_cxt (int ,TYPE_5__*,int ) ;
 int get_opcode (scalar_t__) ;

__attribute__((used)) static FmgrInfo *
minmax_get_strategy_procinfo(BrinDesc *bdesc, uint16 attno, Oid subtype,
        uint16 strategynum)
{
 MinmaxOpaque *opaque;

 Assert(strategynum >= 1 &&
     strategynum <= BTMaxStrategyNumber);

 opaque = (MinmaxOpaque *) bdesc->bd_info[attno - 1]->oi_opaque;






 if (opaque->cached_subtype != subtype)
 {
  uint16 i;

  for (i = 1; i <= BTMaxStrategyNumber; i++)
   opaque->strategy_procinfos[i - 1].fn_oid = InvalidOid;
  opaque->cached_subtype = subtype;
 }

 if (opaque->strategy_procinfos[strategynum - 1].fn_oid == InvalidOid)
 {
  Form_pg_attribute attr;
  HeapTuple tuple;
  Oid opfamily,
     oprid;
  bool isNull;

  opfamily = bdesc->bd_index->rd_opfamily[attno - 1];
  attr = TupleDescAttr(bdesc->bd_tupdesc, attno - 1);
  tuple = SearchSysCache4(AMOPSTRATEGY, ObjectIdGetDatum(opfamily),
        ObjectIdGetDatum(attr->atttypid),
        ObjectIdGetDatum(subtype),
        Int16GetDatum(strategynum));

  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "missing operator %d(%u,%u) in opfamily %u",
     strategynum, attr->atttypid, subtype, opfamily);

  oprid = DatumGetObjectId(SysCacheGetAttr(AMOPSTRATEGY, tuple,
             Anum_pg_amop_amopopr, &isNull));
  ReleaseSysCache(tuple);
  Assert(!isNull && RegProcedureIsValid(oprid));

  fmgr_info_cxt(get_opcode(oprid),
       &opaque->strategy_procinfos[strategynum - 1],
       bdesc->bd_context);
 }

 return &opaque->strategy_procinfos[strategynum - 1];
}
