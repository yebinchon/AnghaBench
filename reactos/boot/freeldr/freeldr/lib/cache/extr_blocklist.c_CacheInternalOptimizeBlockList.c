
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int * Flink; } ;
struct TYPE_7__ {int ListEntry; } ;
struct TYPE_6__ {TYPE_3__ CacheBlockHead; } ;
typedef TYPE_1__* PCACHE_DRIVE ;
typedef TYPE_2__* PCACHE_BLOCK ;


 int InsertHeadList (TYPE_3__*,int *) ;
 int RemoveEntryList (int *) ;
 int TRACE (char*) ;

VOID CacheInternalOptimizeBlockList(PCACHE_DRIVE CacheDrive, PCACHE_BLOCK CacheBlock)
{

    TRACE("CacheInternalOptimizeBlockList()\n");


    if (&CacheBlock->ListEntry != CacheDrive->CacheBlockHead.Flink)
    {

        RemoveEntryList(&CacheBlock->ListEntry);


        InsertHeadList(&CacheDrive->CacheBlockHead, &CacheBlock->ListEntry);
    }
}
