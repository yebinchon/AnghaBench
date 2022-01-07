
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {int Flink; } ;
struct TYPE_8__ {scalar_t__ BlockNumber; TYPE_3__ ListEntry; int AccessCount; } ;
struct TYPE_7__ {TYPE_3__ CacheBlockHead; } ;
typedef TYPE_1__* PCACHE_DRIVE ;
typedef TYPE_2__* PCACHE_BLOCK ;


 int CACHE_BLOCK ;
 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int IsListEmpty (TYPE_3__*) ;
 int ListEntry ;
 int TRACE (char*,scalar_t__) ;

PCACHE_BLOCK CacheInternalFindBlock(PCACHE_DRIVE CacheDrive, ULONG BlockNumber)
{
    PCACHE_BLOCK CacheBlock = ((void*)0);

    TRACE("CacheInternalFindBlock() BlockNumber = %d\n", BlockNumber);




    if (!IsListEmpty(&CacheDrive->CacheBlockHead))
    {



        CacheBlock = CONTAINING_RECORD(CacheDrive->CacheBlockHead.Flink, CACHE_BLOCK, ListEntry);

        while (&CacheBlock->ListEntry != &CacheDrive->CacheBlockHead)
        {



            if (CacheBlock->BlockNumber == BlockNumber)
            {



                CacheBlock->AccessCount++;

                return CacheBlock;
            }

            CacheBlock = CONTAINING_RECORD(CacheBlock->ListEntry.Flink, CACHE_BLOCK, ListEntry);
        }
    }

    return ((void*)0);
}
