
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ NtfUnicode; } ;
struct TYPE_7__ {int iItemid; int hdr; int szText; } ;
struct TYPE_6__ {int iItemid; int hdr; int szText; } ;
typedef TYPE_1__ NMCBEDRAGBEGINW ;
typedef TYPE_2__ NMCBEDRAGBEGINA ;
typedef int LPCWSTR ;
typedef TYPE_3__ COMBOEX_INFO ;


 int CBEMAXSTRLEN ;
 int CBEN_DRAGBEGINA ;
 int CBEN_DRAGBEGINW ;
 int COMBOEX_Notify (TYPE_3__ const*,int ,int *) ;
 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,int ,int ,int ,int ) ;
 int lstrcpynW (int ,int ,int ) ;

__attribute__((used)) static void COMBOEX_NotifyDragBegin(const COMBOEX_INFO *infoPtr, LPCWSTR wstr)
{

    if (infoPtr->NtfUnicode) {
        NMCBEDRAGBEGINW ndbw;

 ndbw.iItemid = -1;
 lstrcpynW(ndbw.szText, wstr, CBEMAXSTRLEN);
 COMBOEX_Notify (infoPtr, CBEN_DRAGBEGINW, &ndbw.hdr);
    } else {
 NMCBEDRAGBEGINA ndba;

 ndba.iItemid = -1;
 WideCharToMultiByte (CP_ACP, 0, wstr, -1, ndba.szText, CBEMAXSTRLEN, 0, 0);

 COMBOEX_Notify (infoPtr, CBEN_DRAGBEGINA, &ndba.hdr);
    }
}
