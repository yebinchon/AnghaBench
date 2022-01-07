
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_internal; int auxiliary_id; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAccessPostAlter ;


 int Assert (int ) ;
 int OAT_POST_ALTER ;
 int memset (TYPE_1__*,int ,int) ;
 int object_access_hook (int ,int ,int ,int,void*) ;
 int stub1 (int ,int ,int ,int,void*) ;

void
RunObjectPostAlterHook(Oid classId, Oid objectId, int subId,
        Oid auxiliaryId, bool is_internal)
{
 ObjectAccessPostAlter pa_arg;


 Assert(object_access_hook != ((void*)0));

 memset(&pa_arg, 0, sizeof(ObjectAccessPostAlter));
 pa_arg.auxiliary_id = auxiliaryId;
 pa_arg.is_internal = is_internal;

 (*object_access_hook) (OAT_POST_ALTER,
         classId, objectId, subId,
         (void *) &pa_arg);
}
