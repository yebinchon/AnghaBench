
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* ofnW; scalar_t__ ofnA; int hwnd; } ;
typedef TYPE_1__* PFD31_DATA ;
typedef int HWND ;


 int FD31_FreeOfnW (TYPE_1__*) ;
 int FD31_OFN_PROP ;
 int RemovePropA (int ,int ) ;
 int TRACE (char*,TYPE_1__*) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void FD31_DestroyPrivate(PFD31_DATA lfs)
{
    HWND hwnd;
    if (!lfs) return;
    hwnd = lfs->hwnd;
    TRACE("destroying private allocation %p\n", lfs);


    if (lfs->ofnA)
    {
        FD31_FreeOfnW(lfs->ofnW);
        heap_free(lfs->ofnW);
    }
    heap_free(lfs);
    RemovePropA(hwnd, FD31_OFN_PROP);
}
