
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_internal; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAccessPostCreate ;


 int Assert (int ) ;
 int OAT_POST_CREATE ;
 int memset (TYPE_1__*,int ,int) ;
 int object_access_hook (int ,int ,int ,int,void*) ;
 int stub1 (int ,int ,int ,int,void*) ;

void
RunObjectPostCreateHook(Oid classId, Oid objectId, int subId,
      bool is_internal)
{
 ObjectAccessPostCreate pc_arg;


 Assert(object_access_hook != ((void*)0));

 memset(&pc_arg, 0, sizeof(ObjectAccessPostCreate));
 pc_arg.is_internal = is_internal;

 (*object_access_hook) (OAT_POST_CREATE,
         classId, objectId, subId,
         (void *) &pc_arg);
}
