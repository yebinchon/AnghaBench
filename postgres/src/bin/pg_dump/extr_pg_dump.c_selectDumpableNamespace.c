
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {int * head; } ;
struct TYPE_16__ {int * head; } ;
struct TYPE_15__ {int remoteVersion; } ;
struct TYPE_13__ {int oid; } ;
struct TYPE_12__ {void* dump; void* dump_contains; TYPE_1__ catId; int name; } ;
struct TYPE_14__ {TYPE_10__ dobj; } ;
typedef TYPE_2__ NamespaceInfo ;
typedef TYPE_3__ Archive ;


 void* DUMP_COMPONENT_ACL ;
 void* DUMP_COMPONENT_ALL ;
 void* DUMP_COMPONENT_NONE ;
 int checkExtensionMembership (TYPE_10__*,TYPE_3__*) ;
 TYPE_5__ schema_exclude_oids ;
 TYPE_5__ schema_include_oids ;
 scalar_t__ simple_oid_list_member (TYPE_5__*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 TYPE_4__ table_include_oids ;

__attribute__((used)) static void
selectDumpableNamespace(NamespaceInfo *nsinfo, Archive *fout)
{





 if (table_include_oids.head != ((void*)0))
  nsinfo->dobj.dump_contains = nsinfo->dobj.dump = DUMP_COMPONENT_NONE;
 else if (schema_include_oids.head != ((void*)0))
  nsinfo->dobj.dump_contains = nsinfo->dobj.dump =
   simple_oid_list_member(&schema_include_oids,
           nsinfo->dobj.catId.oid) ?
   DUMP_COMPONENT_ALL : DUMP_COMPONENT_NONE;
 else if (fout->remoteVersion >= 90600 &&
    strcmp(nsinfo->dobj.name, "pg_catalog") == 0)
 {





  nsinfo->dobj.dump_contains = nsinfo->dobj.dump = DUMP_COMPONENT_ACL;
 }
 else if (strncmp(nsinfo->dobj.name, "pg_", 3) == 0 ||
    strcmp(nsinfo->dobj.name, "information_schema") == 0)
 {

  nsinfo->dobj.dump_contains = nsinfo->dobj.dump = DUMP_COMPONENT_NONE;
 }
 else if (strcmp(nsinfo->dobj.name, "public") == 0)
 {
  nsinfo->dobj.dump = DUMP_COMPONENT_ACL;
  nsinfo->dobj.dump_contains = DUMP_COMPONENT_ALL;
 }
 else
  nsinfo->dobj.dump_contains = nsinfo->dobj.dump = DUMP_COMPONENT_ALL;




 if (nsinfo->dobj.dump_contains &&
  simple_oid_list_member(&schema_exclude_oids,
          nsinfo->dobj.catId.oid))
  nsinfo->dobj.dump_contains = nsinfo->dobj.dump = DUMP_COMPONENT_NONE;
 (void) checkExtensionMembership(&nsinfo->dobj, fout);
}
