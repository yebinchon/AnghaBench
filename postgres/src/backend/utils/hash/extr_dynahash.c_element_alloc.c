
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* link; } ;
struct TYPE_9__ {int entrysize; TYPE_1__* freeList; } ;
struct TYPE_8__ {scalar_t__ (* alloc ) (int) ;int hcxt; scalar_t__ isfixed; TYPE_3__* hctl; } ;
struct TYPE_7__ {int mutex; TYPE_4__* freeList; } ;
typedef int Size ;
typedef TYPE_2__ HTAB ;
typedef TYPE_3__ HASHHDR ;
typedef TYPE_4__ HASHELEMENT ;


 int CurrentDynaHashCxt ;
 scalar_t__ IS_PARTITIONED (TYPE_3__*) ;
 int MAXALIGN (int) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static bool
element_alloc(HTAB *hashp, int nelem, int freelist_idx)
{
 HASHHDR *hctl = hashp->hctl;
 Size elementSize;
 HASHELEMENT *firstElement;
 HASHELEMENT *tmpElement;
 HASHELEMENT *prevElement;
 int i;

 if (hashp->isfixed)
  return 0;


 elementSize = MAXALIGN(sizeof(HASHELEMENT)) + MAXALIGN(hctl->entrysize);

 CurrentDynaHashCxt = hashp->hcxt;
 firstElement = (HASHELEMENT *) hashp->alloc(nelem * elementSize);

 if (!firstElement)
  return 0;


 prevElement = ((void*)0);
 tmpElement = firstElement;
 for (i = 0; i < nelem; i++)
 {
  tmpElement->link = prevElement;
  prevElement = tmpElement;
  tmpElement = (HASHELEMENT *) (((char *) tmpElement) + elementSize);
 }


 if (IS_PARTITIONED(hctl))
  SpinLockAcquire(&hctl->freeList[freelist_idx].mutex);


 firstElement->link = hctl->freeList[freelist_idx].freeList;
 hctl->freeList[freelist_idx].freeList = prevElement;

 if (IS_PARTITIONED(hctl))
  SpinLockRelease(&hctl->freeList[freelist_idx].mutex);

 return 1;
}
