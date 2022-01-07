
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int secdlg_data ;
typedef int WPARAM ;
struct TYPE_3__ {int code; int hwndFrom; } ;
struct TYPE_4__ {int uNewState; TYPE_1__ hdr; int iItem; } ;
typedef TYPE_2__ NMLISTVIEW ;
typedef scalar_t__ LPARAM ;
typedef int INT_PTR ;


 int FALSE ;
 int LVIS_SELECTED ;


 int TRACE (char*,int ,scalar_t__,int ,int,...) ;
 int update_zone_info (int *,int ) ;

__attribute__((used)) static INT_PTR security_on_notify(secdlg_data *sd, WPARAM wparam, LPARAM lparam)
{
    NMLISTVIEW *nm;

    nm = (NMLISTVIEW *) lparam;
    switch (nm->hdr.code)
    {
        case 129:
            TRACE("LVN_ITEMCHANGED (0x%lx, 0x%lx) from %p with code: %d (item: %d, uNewState: %u)\n",
                    wparam, lparam, nm->hdr.hwndFrom, nm->hdr.code, nm->iItem, nm->uNewState);
            if ((nm->uNewState & LVIS_SELECTED) == LVIS_SELECTED) {
                update_zone_info(sd, nm->iItem);
            }
            break;

        case 128:
            TRACE("PSN_APPLY (0x%lx, 0x%lx) from %p with code: %d\n", wparam, lparam,
                    nm->hdr.hwndFrom, nm->hdr.code);
            break;

        default:
            TRACE("WM_NOTIFY (0x%lx, 0x%lx) from %p with code: %d\n", wparam, lparam,
                    nm->hdr.hwndFrom, nm->hdr.code);

    }
    return FALSE;
}
