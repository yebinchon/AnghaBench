
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_10__ {scalar_t__ fn_oid; } ;
struct TYPE_9__ {int rd_indexcxt; int * rd_support; TYPE_3__* rd_supportinfo; TYPE_1__* rd_indam; } ;
struct TYPE_8__ {int amsupport; } ;
typedef TYPE_2__* Relation ;
typedef int RegProcedure ;
typedef TYPE_3__ FmgrInfo ;
typedef int AttrNumber ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int RegProcedureIsValid (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int elog (int ,char*,int,int,int ) ;
 int fmgr_info_cxt (int ,TYPE_3__*,int ) ;

FmgrInfo *
index_getprocinfo(Relation irel,
      AttrNumber attnum,
      uint16 procnum)
{
 FmgrInfo *locinfo;
 int nproc;
 int procindex;

 nproc = irel->rd_indam->amsupport;

 Assert(procnum > 0 && procnum <= (uint16) nproc);

 procindex = (nproc * (attnum - 1)) + (procnum - 1);

 locinfo = irel->rd_supportinfo;

 Assert(locinfo != ((void*)0));

 locinfo += procindex;


 if (locinfo->fn_oid == InvalidOid)
 {
  RegProcedure *loc = irel->rd_support;
  RegProcedure procId;

  Assert(loc != ((void*)0));

  procId = loc[procindex];







  if (!RegProcedureIsValid(procId))
   elog(ERROR, "missing support function %d for attribute %d of index \"%s\"",
     procnum, attnum, RelationGetRelationName(irel));

  fmgr_info_cxt(procId, locinfo, irel->rd_indexcxt);
 }

 return locinfo;
}
