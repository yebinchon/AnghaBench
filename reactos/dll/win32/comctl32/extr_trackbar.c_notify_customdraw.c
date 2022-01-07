
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int idFrom; } ;
struct TYPE_8__ {int dwDrawStage; TYPE_1__ hdr; } ;
struct TYPE_7__ {int hwndNotify; } ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef TYPE_3__ NMCUSTOMDRAW ;
typedef int LPARAM ;


 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;

__attribute__((used)) static inline int
notify_customdraw (const TRACKBAR_INFO *infoPtr, NMCUSTOMDRAW *pnmcd, int stage)
{
    pnmcd->dwDrawStage = stage;
    return SendMessageW (infoPtr->hwndNotify, WM_NOTIFY,
           pnmcd->hdr.idFrom, (LPARAM)pnmcd);
}
