
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_10__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_9__ {int context; } ;
struct TYPE_8__ {int * toast_hash; } ;
typedef int ReorderBufferToastEnt ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef TYPE_2__ ReorderBuffer ;
typedef int Oid ;
typedef TYPE_3__ HASHCTL ;


 int Assert (int ) ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int * hash_create (char*,int,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
ReorderBufferToastInitHash(ReorderBuffer *rb, ReorderBufferTXN *txn)
{
 HASHCTL hash_ctl;

 Assert(txn->toast_hash == ((void*)0));

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(Oid);
 hash_ctl.entrysize = sizeof(ReorderBufferToastEnt);
 hash_ctl.hcxt = rb->context;
 txn->toast_hash = hash_create("ReorderBufferToastHash", 5, &hash_ctl,
          HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
}
