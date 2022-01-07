
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int plpgsql_HashEnt ;
typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int PLpgSQL_func_hashkey ;
typedef TYPE_1__ HASHCTL ;


 int Assert (int ) ;
 int FUNCS_PER_USER ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int * hash_create (char*,int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int * plpgsql_HashTable ;

void
plpgsql_HashTableInit(void)
{
 HASHCTL ctl;


 Assert(plpgsql_HashTable == ((void*)0));

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(PLpgSQL_func_hashkey);
 ctl.entrysize = sizeof(plpgsql_HashEnt);
 plpgsql_HashTable = hash_create("PLpgSQL function hash",
         FUNCS_PER_USER,
         &ctl,
         HASH_ELEM | HASH_BLOBS);
}
