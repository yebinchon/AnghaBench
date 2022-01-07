
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* dopt; } ;
struct TYPE_13__ {int dump; TYPE_2__* namespace; } ;
struct TYPE_12__ {scalar_t__ include_everything; } ;
struct TYPE_10__ {int dump_contains; } ;
struct TYPE_11__ {TYPE_1__ dobj; } ;
typedef TYPE_4__ DumpableObject ;
typedef TYPE_5__ Archive ;


 int DUMP_COMPONENT_ALL ;
 int DUMP_COMPONENT_NONE ;
 scalar_t__ checkExtensionMembership (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static void
selectDumpableObject(DumpableObject *dobj, Archive *fout)
{
 if (checkExtensionMembership(dobj, fout))
  return;





 if (dobj->namespace)
  dobj->dump = dobj->namespace->dobj.dump_contains;
 else
  dobj->dump = fout->dopt->include_everything ?
   DUMP_COMPONENT_ALL : DUMP_COMPONENT_NONE;
}
