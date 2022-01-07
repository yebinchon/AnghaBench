
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int RI_QueryKey ;
typedef int RI_QueryHashEntry ;
typedef int RI_ConstraintInfo ;
typedef int RI_CompareKey ;
typedef int RI_CompareHashEntry ;
typedef int Oid ;
typedef TYPE_1__ HASHCTL ;
typedef int Datum ;


 int CONSTROID ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int InvalidateConstraintCacheCallBack ;
 int RI_INIT_CONSTRAINTHASHSIZE ;
 int RI_INIT_QUERYHASHSIZE ;
 void* hash_create (char*,int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* ri_compare_cache ;
 void* ri_constraint_cache ;
 void* ri_query_cache ;

__attribute__((used)) static void
ri_InitHashTables(void)
{
 HASHCTL ctl;

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(Oid);
 ctl.entrysize = sizeof(RI_ConstraintInfo);
 ri_constraint_cache = hash_create("RI constraint cache",
           RI_INIT_CONSTRAINTHASHSIZE,
           &ctl, HASH_ELEM | HASH_BLOBS);


 CacheRegisterSyscacheCallback(CONSTROID,
          InvalidateConstraintCacheCallBack,
          (Datum) 0);

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(RI_QueryKey);
 ctl.entrysize = sizeof(RI_QueryHashEntry);
 ri_query_cache = hash_create("RI query cache",
         RI_INIT_QUERYHASHSIZE,
         &ctl, HASH_ELEM | HASH_BLOBS);

 memset(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(RI_CompareKey);
 ctl.entrysize = sizeof(RI_CompareHashEntry);
 ri_compare_cache = hash_create("RI compare cache",
           RI_INIT_QUERYHASHSIZE,
           &ctl, HASH_ELEM | HASH_BLOBS);
}
