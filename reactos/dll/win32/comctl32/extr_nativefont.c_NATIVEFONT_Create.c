
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; } ;
typedef TYPE_1__ NATIVEFONT_INFO ;
typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD_PTR ;


 TYPE_1__* Alloc (int) ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static LRESULT
NATIVEFONT_Create (HWND hwnd)
{
    NATIVEFONT_INFO *infoPtr;


    infoPtr = Alloc (sizeof(NATIVEFONT_INFO));
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);


    infoPtr->hwndSelf = hwnd;

    return 0;
}
