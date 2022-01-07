
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UInt32 ;
struct TYPE_4__ {size_t NumFolders; int * Files; int * Folders; int * PackCRCs; int * PackCRCsDefined; int * PackSizes; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CSzAr ;


 int IAlloc_Free (int *,int *) ;
 int SzAr_Init (TYPE_1__*) ;
 int SzFolder_Free (int *,int *) ;

void SzAr_Free(CSzAr *p, ISzAlloc *alloc)
{
  UInt32 i;
  if (p->Folders)
    for (i = 0; i < p->NumFolders; i++)
      SzFolder_Free(&p->Folders[i], alloc);

  IAlloc_Free(alloc, p->PackSizes);
  IAlloc_Free(alloc, p->PackCRCsDefined);
  IAlloc_Free(alloc, p->PackCRCs);
  IAlloc_Free(alloc, p->Folders);
  IAlloc_Free(alloc, p->Files);
  SzAr_Init(p);
}
