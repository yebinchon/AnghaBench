
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int snapshot; } ;
typedef TYPE_1__ LargeObjectDesc ;


 int Assert (int ) ;
 int PointerIsValid (TYPE_1__*) ;
 int TopTransactionResourceOwner ;
 int UnregisterSnapshotFromOwner (int ,int ) ;
 int pfree (TYPE_1__*) ;

void
inv_close(LargeObjectDesc *obj_desc)
{
 Assert(PointerIsValid(obj_desc));

 UnregisterSnapshotFromOwner(obj_desc->snapshot,
        TopTransactionResourceOwner);

 pfree(obj_desc);
}
