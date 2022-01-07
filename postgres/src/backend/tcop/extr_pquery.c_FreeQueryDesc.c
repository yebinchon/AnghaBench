
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crosscheck_snapshot; int snapshot; int * estate; } ;
typedef TYPE_1__ QueryDesc ;


 int Assert (int ) ;
 int UnregisterSnapshot (int ) ;
 int pfree (TYPE_1__*) ;

void
FreeQueryDesc(QueryDesc *qdesc)
{

 Assert(qdesc->estate == ((void*)0));


 UnregisterSnapshot(qdesc->snapshot);
 UnregisterSnapshot(qdesc->crosscheck_snapshot);


 pfree(qdesc);
}
