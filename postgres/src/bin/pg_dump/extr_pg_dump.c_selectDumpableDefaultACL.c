
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int dump; TYPE_2__* namespace; } ;
struct TYPE_12__ {TYPE_3__ dobj; } ;
struct TYPE_11__ {scalar_t__ include_everything; } ;
struct TYPE_8__ {int dump_contains; } ;
struct TYPE_9__ {TYPE_1__ dobj; } ;
typedef TYPE_4__ DumpOptions ;
typedef TYPE_5__ DefaultACLInfo ;


 int DUMP_COMPONENT_ALL ;
 int DUMP_COMPONENT_NONE ;

__attribute__((used)) static void
selectDumpableDefaultACL(DefaultACLInfo *dinfo, DumpOptions *dopt)
{


 if (dinfo->dobj.namespace)

  dinfo->dobj.dump = dinfo->dobj.namespace->dobj.dump_contains;
 else
  dinfo->dobj.dump = dopt->include_everything ?
   DUMP_COMPONENT_ALL : DUMP_COMPONENT_NONE;
}
