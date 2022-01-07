
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ NtfUnicode; } ;
struct TYPE_8__ {int hdr; int iWhy; int szText; int iNewSelection; int fChanged; } ;
struct TYPE_7__ {int iWhy; int iNewSelection; int fChanged; int hdr; int szText; } ;
typedef TYPE_1__ NMCBEENDEDITW ;
typedef TYPE_2__ NMCBEENDEDITA ;
typedef int LPCWSTR ;
typedef int INT ;
typedef TYPE_3__ COMBOEX_INFO ;


 int CBEMAXSTRLEN ;
 int CBEN_ENDEDITA ;
 int CBEN_ENDEDITW ;
 int COMBOEX_Notify (TYPE_3__ const*,int ,int *) ;
 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,int ,int ,int ,int ) ;
 int lstrcpynW (int ,int ,int ) ;

__attribute__((used)) static INT COMBOEX_NotifyEndEdit (const COMBOEX_INFO *infoPtr, NMCBEENDEDITW *neew, LPCWSTR wstr)
{

    if (infoPtr->NtfUnicode) {
 lstrcpynW(neew->szText, wstr, CBEMAXSTRLEN);
 return COMBOEX_Notify (infoPtr, CBEN_ENDEDITW, &neew->hdr);
    } else {
 NMCBEENDEDITA neea;

        neea.hdr = neew->hdr;
        neea.fChanged = neew->fChanged;
        neea.iNewSelection = neew->iNewSelection;
        WideCharToMultiByte (CP_ACP, 0, wstr, -1, neea.szText, CBEMAXSTRLEN, 0, 0);
        neea.iWhy = neew->iWhy;

        return COMBOEX_Notify (infoPtr, CBEN_ENDEDITA, &neea.hdr);
    }
}
