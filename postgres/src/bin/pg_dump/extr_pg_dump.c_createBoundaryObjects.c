
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* name; void* catId; int objType; } ;
typedef TYPE_1__ DumpableObject ;


 int AssignDumpId (TYPE_1__*) ;
 int DO_POST_DATA_BOUNDARY ;
 int DO_PRE_DATA_BOUNDARY ;
 void* nilCatalogId ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (char*) ;

__attribute__((used)) static DumpableObject *
createBoundaryObjects(void)
{
 DumpableObject *dobjs;

 dobjs = (DumpableObject *) pg_malloc(2 * sizeof(DumpableObject));

 dobjs[0].objType = DO_PRE_DATA_BOUNDARY;
 dobjs[0].catId = nilCatalogId;
 AssignDumpId(dobjs + 0);
 dobjs[0].name = pg_strdup("PRE-DATA BOUNDARY");

 dobjs[1].objType = DO_POST_DATA_BOUNDARY;
 dobjs[1].catId = nilCatalogId;
 AssignDumpId(dobjs + 1);
 dobjs[1].name = pg_strdup("POST-DATA BOUNDARY");

 return dobjs;
}
