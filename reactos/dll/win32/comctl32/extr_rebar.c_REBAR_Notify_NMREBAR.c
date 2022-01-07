
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int uBand; int fStyle; int dwMask; int lParam; int wID; } ;
struct TYPE_4__ {int fMask; int fStyle; int lParam; int wID; } ;
typedef int REBAR_INFO ;
typedef TYPE_1__ REBAR_BAND ;
typedef TYPE_2__ NMREBAR ;
typedef int NMHDR ;
typedef int INT ;


 int RBBIM_ID ;
 int RBBIM_LPARAM ;
 int RBBIM_STYLE ;
 int RBNM_ID ;
 int RBNM_LPARAM ;
 int RBNM_STYLE ;
 TYPE_1__* REBAR_GetBand (int const*,int) ;
 int REBAR_Notify (int *,int const*,int) ;

__attribute__((used)) static INT
REBAR_Notify_NMREBAR (const REBAR_INFO *infoPtr, UINT uBand, UINT code)
{
    NMREBAR notify_rebar;

    notify_rebar.dwMask = 0;
    if (uBand != -1) {
 REBAR_BAND *lpBand = REBAR_GetBand(infoPtr, uBand);

 if (lpBand->fMask & RBBIM_ID) {
     notify_rebar.dwMask |= RBNM_ID;
     notify_rebar.wID = lpBand->wID;
 }
 if (lpBand->fMask & RBBIM_LPARAM) {
     notify_rebar.dwMask |= RBNM_LPARAM;
     notify_rebar.lParam = lpBand->lParam;
 }
 if (lpBand->fMask & RBBIM_STYLE) {
     notify_rebar.dwMask |= RBNM_STYLE;
     notify_rebar.fStyle = lpBand->fStyle;
 }
    }
    notify_rebar.uBand = uBand;
    return REBAR_Notify ((NMHDR *)&notify_rebar, infoPtr, code);
}
