
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int ti_options; int mycid; int * estate; int cstate; scalar_t__ bufferedBytes; scalar_t__ bufferedTuples; int multiInsertBuffers; } ;
struct TYPE_11__ {TYPE_2__* ri_RelationDesc; } ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int EState ;
typedef int CopyState ;
typedef TYPE_4__ CopyMultiInsertInfo ;
typedef int CommandId ;


 int CopyMultiInsertInfoSetupBuffer (TYPE_4__*,TYPE_3__*) ;
 int NIL ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;

__attribute__((used)) static void
CopyMultiInsertInfoInit(CopyMultiInsertInfo *miinfo, ResultRelInfo *rri,
      CopyState cstate, EState *estate, CommandId mycid,
      int ti_options)
{
 miinfo->multiInsertBuffers = NIL;
 miinfo->bufferedTuples = 0;
 miinfo->bufferedBytes = 0;
 miinfo->cstate = cstate;
 miinfo->estate = estate;
 miinfo->mycid = mycid;
 miinfo->ti_options = ti_options;






 if (rri->ri_RelationDesc->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
  CopyMultiInsertInfoSetupBuffer(miinfo, rri);
}
