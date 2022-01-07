
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; int hcxt; } ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;


 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int TopTransactionContext ;
 int enum_blacklist ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
init_enum_blacklist(void)
{
 HASHCTL hash_ctl;

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(Oid);
 hash_ctl.entrysize = sizeof(Oid);
 hash_ctl.hcxt = TopTransactionContext;
 enum_blacklist = hash_create("Enum value blacklist",
         32,
         &hash_ctl,
         HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
}
