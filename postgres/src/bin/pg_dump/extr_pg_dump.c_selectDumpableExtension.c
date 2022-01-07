
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ include_everything; } ;
struct TYPE_7__ {scalar_t__ oid; } ;
struct TYPE_8__ {int dump_contains; int dump; TYPE_1__ catId; } ;
struct TYPE_9__ {TYPE_2__ dobj; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ ExtensionInfo ;
typedef TYPE_4__ DumpOptions ;


 int DUMP_COMPONENT_ACL ;
 int DUMP_COMPONENT_ALL ;
 int DUMP_COMPONENT_NONE ;
 scalar_t__ g_last_builtin_oid ;

__attribute__((used)) static void
selectDumpableExtension(ExtensionInfo *extinfo, DumpOptions *dopt)
{





 if (extinfo->dobj.catId.oid <= (Oid) g_last_builtin_oid)
  extinfo->dobj.dump = extinfo->dobj.dump_contains = DUMP_COMPONENT_ACL;
 else
  extinfo->dobj.dump = extinfo->dobj.dump_contains =
   dopt->include_everything ? DUMP_COMPONENT_ALL :
   DUMP_COMPONENT_NONE;
}
