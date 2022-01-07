
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ oid; } ;
struct TYPE_13__ {void* dump; TYPE_2__ catId; } ;
struct TYPE_12__ {int remoteVersion; TYPE_1__* dopt; } ;
struct TYPE_11__ {TYPE_7__ dobj; } ;
struct TYPE_9__ {int include_everything; } ;
typedef TYPE_3__ ProcLangInfo ;
typedef scalar_t__ Oid ;
typedef TYPE_4__ Archive ;


 void* DUMP_COMPONENT_ACL ;
 void* DUMP_COMPONENT_ALL ;
 void* DUMP_COMPONENT_NONE ;
 scalar_t__ checkExtensionMembership (TYPE_7__*,TYPE_4__*) ;
 scalar_t__ g_last_builtin_oid ;

__attribute__((used)) static void
selectDumpableProcLang(ProcLangInfo *plang, Archive *fout)
{
 if (checkExtensionMembership(&plang->dobj, fout))
  return;
 if (!fout->dopt->include_everything)
  plang->dobj.dump = DUMP_COMPONENT_NONE;
 else
 {
  if (plang->dobj.catId.oid <= (Oid) g_last_builtin_oid)
   plang->dobj.dump = fout->remoteVersion < 90600 ?
    DUMP_COMPONENT_NONE : DUMP_COMPONENT_ACL;
  else
   plang->dobj.dump = DUMP_COMPONENT_ALL;
 }
}
