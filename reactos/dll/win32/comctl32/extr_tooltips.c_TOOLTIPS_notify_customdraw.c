
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hwndFrom; int code; } ;
struct TYPE_5__ {TYPE_2__ hdr; scalar_t__ dwDrawStage; } ;
struct TYPE_7__ {TYPE_1__ nmcd; int uDrawFlags; } ;
typedef TYPE_3__ NMTTCUSTOMDRAW ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ DWORD ;


 int GetParent (int ) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,unsigned int,...) ;
 int WM_NOTIFY ;

__attribute__((used)) static inline DWORD
TOOLTIPS_notify_customdraw (DWORD dwDrawStage, NMTTCUSTOMDRAW *lpnmttcd)
{
    LRESULT result;
    lpnmttcd->nmcd.dwDrawStage = dwDrawStage;

    TRACE("Notifying stage %d, flags %x, id %x\n", lpnmttcd->nmcd.dwDrawStage,
          lpnmttcd->uDrawFlags, lpnmttcd->nmcd.hdr.code);

    result = SendMessageW(GetParent(lpnmttcd->nmcd.hdr.hwndFrom), WM_NOTIFY,
                          0, (LPARAM)lpnmttcd);

    TRACE("Notify result %x\n", (unsigned int)result);

    return result;
}
