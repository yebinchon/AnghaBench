
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_4__* dataObj; } ;
typedef TYPE_5__ TableInfo ;
struct TYPE_17__ {TYPE_2__* contable; int confrelid; } ;
struct TYPE_16__ {scalar_t__ objType; } ;
struct TYPE_13__ {int dumpId; } ;
struct TYPE_14__ {TYPE_3__ dobj; } ;
struct TYPE_12__ {TYPE_1__* dataObj; } ;
struct TYPE_11__ {int dobj; } ;
typedef TYPE_6__ DumpableObject ;
typedef TYPE_7__ ConstraintInfo ;


 scalar_t__ DO_FK_CONSTRAINT ;
 int addObjectDependency (int *,int ) ;
 TYPE_5__* findTableByOid (int ) ;
 int free (TYPE_6__**) ;
 int getDumpableObjects (TYPE_6__***,int*) ;

__attribute__((used)) static void
getTableDataFKConstraints(void)
{
 DumpableObject **dobjs;
 int numObjs;
 int i;


 getDumpableObjects(&dobjs, &numObjs);
 for (i = 0; i < numObjs; i++)
 {
  if (dobjs[i]->objType == DO_FK_CONSTRAINT)
  {
   ConstraintInfo *cinfo = (ConstraintInfo *) dobjs[i];
   TableInfo *ftable;


   if (cinfo->contable == ((void*)0) ||
    cinfo->contable->dataObj == ((void*)0))
    continue;
   ftable = findTableByOid(cinfo->confrelid);
   if (ftable == ((void*)0) ||
    ftable->dataObj == ((void*)0))
    continue;





   addObjectDependency(&cinfo->contable->dataObj->dobj,
        ftable->dataObj->dobj.dumpId);
  }
 }
 free(dobjs);
}
