
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int PLyProcedureKey ;
typedef int PLyProcedureEntry ;
typedef TYPE_1__ HASHCTL ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int PLy_procedure_cache ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
init_procedure_caches(void)
{
 HASHCTL hash_ctl;

 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(PLyProcedureKey);
 hash_ctl.entrysize = sizeof(PLyProcedureEntry);
 PLy_procedure_cache = hash_create("PL/Python procedures", 32, &hash_ctl,
           HASH_ELEM | HASH_BLOBS);
}
