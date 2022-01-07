
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_7__ {int hwnd; TYPE_2__* ofnW; TYPE_1__* ofnA; } ;
struct TYPE_6__ {int (* lpfnHook ) (int ,int ,int ,int ) ;} ;
struct TYPE_5__ {int (* lpfnHook ) (int ,int ,int ,int ) ;} ;
typedef int LPARAM ;
typedef TYPE_3__ FD31_DATA ;
typedef int BOOL ;


 int TRACE (char*,int (*) (int ,int ,int ,int ),int ,int ,int ,int ) ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static BOOL FD31_CallWindowProc(const FD31_DATA *lfs, UINT wMsg, WPARAM wParam, LPARAM lParam)
{
    BOOL ret;

    if (lfs->ofnA)
    {
        TRACE("Call hookA %p (%p, %04x, %08lx, %08lx)\n",
               lfs->ofnA->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
        ret = lfs->ofnA->lpfnHook(lfs->hwnd, wMsg, wParam, lParam);
        TRACE("ret hookA %p (%p, %04x, %08lx, %08lx)\n",
               lfs->ofnA->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
        return ret;
    }

    TRACE("Call hookW %p (%p, %04x, %08lx, %08lx)\n",
           lfs->ofnW->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
    ret = lfs->ofnW->lpfnHook(lfs->hwnd, wMsg, wParam, lParam);
    TRACE("Ret hookW %p (%p, %04x, %08lx, %08lx)\n",
           lfs->ofnW->lpfnHook, lfs->hwnd, wMsg, wParam, lParam);
    return ret;
}
