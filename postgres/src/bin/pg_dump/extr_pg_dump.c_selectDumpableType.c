
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* namespace; int dump; void* objType; } ;
struct TYPE_12__ {scalar_t__ typrelkind; TYPE_8__ dobj; scalar_t__ isArray; int typrelid; } ;
typedef TYPE_4__ TypeInfo ;
struct TYPE_9__ {int dump; } ;
struct TYPE_13__ {TYPE_1__ dobj; } ;
typedef TYPE_5__ TableInfo ;
struct TYPE_10__ {int dump_contains; } ;
struct TYPE_11__ {TYPE_2__ dobj; } ;
typedef int Archive ;


 void* DO_DUMMY_TYPE ;
 int DUMP_COMPONENT_NONE ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ checkExtensionMembership (TYPE_8__*,int *) ;
 TYPE_5__* findTableByOid (int ) ;

__attribute__((used)) static void
selectDumpableType(TypeInfo *tyinfo, Archive *fout)
{

 if (OidIsValid(tyinfo->typrelid) &&
  tyinfo->typrelkind != RELKIND_COMPOSITE_TYPE)
 {
  TableInfo *tytable = findTableByOid(tyinfo->typrelid);

  tyinfo->dobj.objType = DO_DUMMY_TYPE;
  if (tytable != ((void*)0))
   tyinfo->dobj.dump = tytable->dobj.dump;
  else
   tyinfo->dobj.dump = DUMP_COMPONENT_NONE;
  return;
 }


 if (tyinfo->isArray)
 {
  tyinfo->dobj.objType = DO_DUMMY_TYPE;







 }

 if (checkExtensionMembership(&tyinfo->dobj, fout))
  return;


 tyinfo->dobj.dump = tyinfo->dobj.namespace->dobj.dump_contains;
}
