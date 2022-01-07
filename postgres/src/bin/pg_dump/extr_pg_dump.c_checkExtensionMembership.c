
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int remoteVersion; TYPE_1__* dopt; } ;
struct TYPE_13__ {int ext_member; int dump; int catId; } ;
struct TYPE_11__ {int dump; int dump_contains; int dumpId; } ;
struct TYPE_12__ {TYPE_2__ dobj; } ;
struct TYPE_10__ {scalar_t__ binary_upgrade; } ;
typedef TYPE_3__ ExtensionInfo ;
typedef TYPE_4__ DumpableObject ;
typedef TYPE_5__ Archive ;


 int DUMP_COMPONENT_ACL ;
 int DUMP_COMPONENT_NONE ;
 int DUMP_COMPONENT_POLICY ;
 int DUMP_COMPONENT_SECLABEL ;
 int addObjectDependency (TYPE_4__*,int ) ;
 TYPE_3__* findOwningExtension (int ) ;

__attribute__((used)) static bool
checkExtensionMembership(DumpableObject *dobj, Archive *fout)
{
 ExtensionInfo *ext = findOwningExtension(dobj->catId);

 if (ext == ((void*)0))
  return 0;

 dobj->ext_member = 1;


 addObjectDependency(dobj, ext->dobj.dumpId);
 if (fout->dopt->binary_upgrade)
  dobj->dump = ext->dobj.dump;
 else
 {
  if (fout->remoteVersion < 90600)
   dobj->dump = DUMP_COMPONENT_NONE;
  else
   dobj->dump = ext->dobj.dump_contains & (DUMP_COMPONENT_ACL |
             DUMP_COMPONENT_SECLABEL |
             DUMP_COMPONENT_POLICY);
 }

 return 1;
}
