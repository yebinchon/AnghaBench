
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* dopt; } ;
struct TYPE_9__ {int dump; } ;
struct TYPE_8__ {scalar_t__ include_everything; } ;
typedef TYPE_2__ DumpableObject ;
typedef TYPE_3__ Archive ;


 int DUMP_COMPONENT_ALL ;
 int DUMP_COMPONENT_NONE ;
 scalar_t__ checkExtensionMembership (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void
selectDumpablePublicationTable(DumpableObject *dobj, Archive *fout)
{
 if (checkExtensionMembership(dobj, fout))
  return;

 dobj->dump = fout->dopt->include_everything ?
  DUMP_COMPONENT_ALL : DUMP_COMPONENT_NONE;
}
