
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int cx; int cy; } ;
struct TYPE_10__ {int cx; int cy; } ;
struct TYPE_13__ {void* hParent; int * pActiveCell; TYPE_2__ ClientSize; TYPE_1__ CellSize; void* hMapWnd; } ;
struct TYPE_12__ {int right; int bottom; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__* PMAP ;
typedef int MAP ;
typedef void* HWND ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int FALSE ;
 int GetClientRect (void*,TYPE_3__*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int SB_VERT ;
 int SetGrid (TYPE_4__*) ;
 int SetLastError (int ) ;
 int SetScrollPos (void*,int ,int ,int ) ;
 int SetWindowLongPtrW (void*,int ,int ) ;
 int TRUE ;
 int XCELLS ;
 int YCELLS ;
 int ZeroMemory (TYPE_4__*,int) ;

__attribute__((used)) static
BOOL
MapOnCreate(PMAP infoPtr,
            HWND hwnd,
            HWND hParent)
{
    RECT rc;
    BOOL Ret = FALSE;

    infoPtr = HeapAlloc(GetProcessHeap(),
                        0,
                        sizeof(MAP));
    if (infoPtr)
    {
        SetLastError(0);
        SetWindowLongPtrW(hwnd,
                          0,
                          (DWORD_PTR)infoPtr);
        if (GetLastError() == 0)
        {
            ZeroMemory(infoPtr,
                       sizeof(MAP));

            infoPtr->hMapWnd = hwnd;
            infoPtr->hParent = hParent;

            GetClientRect(hwnd, &rc);
            infoPtr->ClientSize.cx = rc.right;
            infoPtr->ClientSize.cy = rc.bottom;
            infoPtr->CellSize.cx = infoPtr->ClientSize.cx / XCELLS;
            infoPtr->CellSize.cy = infoPtr->ClientSize.cy / YCELLS;

            infoPtr->pActiveCell = ((void*)0);

            SetGrid(infoPtr);

            SetScrollPos(infoPtr->hParent, SB_VERT, 0, TRUE);

            Ret = TRUE;
        }
    }

    return Ret;
}
