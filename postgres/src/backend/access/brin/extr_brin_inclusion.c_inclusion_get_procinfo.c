
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_11__ {int bd_context; int bd_index; TYPE_1__** bd_info; } ;
struct TYPE_10__ {scalar_t__ fn_oid; } ;
struct TYPE_9__ {int* extra_proc_missing; TYPE_3__* extra_procinfos; } ;
struct TYPE_8__ {scalar_t__ oi_opaque; } ;
typedef TYPE_2__ InclusionOpaque ;
typedef TYPE_3__ FmgrInfo ;
typedef TYPE_4__ BrinDesc ;


 scalar_t__ InvalidOid ;
 int PROCNUM_BASE ;
 scalar_t__ RegProcedureIsValid (int ) ;
 int fmgr_info_copy (TYPE_3__*,int ,int ) ;
 int index_getprocid (int ,int,int) ;
 int index_getprocinfo (int ,int,int) ;

__attribute__((used)) static FmgrInfo *
inclusion_get_procinfo(BrinDesc *bdesc, uint16 attno, uint16 procnum)
{
 InclusionOpaque *opaque;
 uint16 basenum = procnum - PROCNUM_BASE;





 opaque = (InclusionOpaque *) bdesc->bd_info[attno - 1]->oi_opaque;





 if (opaque->extra_proc_missing[basenum])
  return ((void*)0);

 if (opaque->extra_procinfos[basenum].fn_oid == InvalidOid)
 {
  if (RegProcedureIsValid(index_getprocid(bdesc->bd_index, attno,
            procnum)))
  {
   fmgr_info_copy(&opaque->extra_procinfos[basenum],
         index_getprocinfo(bdesc->bd_index, attno, procnum),
         bdesc->bd_context);
  }
  else
  {
   opaque->extra_proc_missing[basenum] = 1;
   return ((void*)0);
  }
 }

 return &opaque->extra_procinfos[basenum];
}
