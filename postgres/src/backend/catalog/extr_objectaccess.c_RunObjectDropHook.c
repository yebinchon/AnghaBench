
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dropflags; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAccessDrop ;


 int Assert (int ) ;
 int OAT_DROP ;
 int memset (TYPE_1__*,int ,int) ;
 int object_access_hook (int ,int ,int ,int,void*) ;
 int stub1 (int ,int ,int ,int,void*) ;

void
RunObjectDropHook(Oid classId, Oid objectId, int subId,
      int dropflags)
{
 ObjectAccessDrop drop_arg;


 Assert(object_access_hook != ((void*)0));

 memset(&drop_arg, 0, sizeof(ObjectAccessDrop));
 drop_arg.dropflags = dropflags;

 (*object_access_hook) (OAT_DROP,
         classId, objectId, subId,
         (void *) &drop_arg);
}
