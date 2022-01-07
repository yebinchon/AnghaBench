
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* link; } ;
struct TYPE_11__ {TYPE_1__* freeList; int nelem_alloc; } ;
struct TYPE_10__ {TYPE_3__* hctl; } ;
struct TYPE_9__ {int mutex; int nentries; TYPE_4__* freeList; } ;
typedef TYPE_2__ HTAB ;
typedef TYPE_3__ HASHHDR ;
typedef TYPE_4__* HASHBUCKET ;


 scalar_t__ IS_PARTITIONED (TYPE_3__*) ;
 int NUM_FREELISTS ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int element_alloc (TYPE_2__*,int ,int) ;

__attribute__((used)) static HASHBUCKET
get_hash_entry(HTAB *hashp, int freelist_idx)
{
 HASHHDR *hctl = hashp->hctl;
 HASHBUCKET newElement;

 for (;;)
 {

  if (IS_PARTITIONED(hctl))
   SpinLockAcquire(&hctl->freeList[freelist_idx].mutex);


  newElement = hctl->freeList[freelist_idx].freeList;

  if (newElement != ((void*)0))
   break;

  if (IS_PARTITIONED(hctl))
   SpinLockRelease(&hctl->freeList[freelist_idx].mutex);
  if (!element_alloc(hashp, hctl->nelem_alloc, freelist_idx))
  {
   int borrow_from_idx;

   if (!IS_PARTITIONED(hctl))
    return ((void*)0);


   borrow_from_idx = freelist_idx;
   for (;;)
   {
    borrow_from_idx = (borrow_from_idx + 1) % NUM_FREELISTS;
    if (borrow_from_idx == freelist_idx)
     break;

    SpinLockAcquire(&(hctl->freeList[borrow_from_idx].mutex));
    newElement = hctl->freeList[borrow_from_idx].freeList;

    if (newElement != ((void*)0))
    {
     hctl->freeList[borrow_from_idx].freeList = newElement->link;
     SpinLockRelease(&(hctl->freeList[borrow_from_idx].mutex));


     SpinLockAcquire(&hctl->freeList[freelist_idx].mutex);
     hctl->freeList[freelist_idx].nentries++;
     SpinLockRelease(&hctl->freeList[freelist_idx].mutex);

     return newElement;
    }

    SpinLockRelease(&(hctl->freeList[borrow_from_idx].mutex));
   }


   return ((void*)0);
  }
 }


 hctl->freeList[freelist_idx].freeList = newElement->link;
 hctl->freeList[freelist_idx].nentries++;

 if (IS_PARTITIONED(hctl))
  SpinLockRelease(&hctl->freeList[freelist_idx].mutex);

 return newElement;
}
