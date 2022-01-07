
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ NtfUnicode; } ;
struct TYPE_7__ {scalar_t__ pszText; int mask; } ;
struct TYPE_8__ {TYPE_1__ ceItem; int hdr; } ;
typedef int NMHDR ;
typedef TYPE_2__ NMCOMBOBOXEXW ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPSTR ;
typedef int INT ;
typedef TYPE_3__ COMBOEX_INFO ;
typedef int CHAR ;


 scalar_t__ Alloc (int) ;
 int CBEIF_TEXT ;
 scalar_t__ CBEN_DRAGBEGINA ;
 scalar_t__ CBEN_DRAGBEGINW ;
 scalar_t__ CBEN_ENDEDITA ;
 scalar_t__ CBEN_ENDEDITW ;
 scalar_t__ CBEN_GETDISPINFOA ;
 scalar_t__ CBEN_GETDISPINFOW ;
 int COMBOEX_Notify (TYPE_3__ const*,scalar_t__,int *) ;
 int CP_ACP ;
 int Free (scalar_t__) ;
 int WideCharToMultiByte (int ,int ,scalar_t__,int,scalar_t__,int,int *,int *) ;
 scalar_t__ is_textW (scalar_t__) ;

__attribute__((used)) static INT
COMBOEX_NotifyItem (const COMBOEX_INFO *infoPtr, UINT code, NMCOMBOBOXEXW *hdr)
{

    if (infoPtr->NtfUnicode)
 return COMBOEX_Notify (infoPtr, code, &hdr->hdr);
    else {
 LPWSTR wstr = hdr->ceItem.pszText;
 LPSTR astr = 0;
 INT ret, len = 0;

 if ((hdr->ceItem.mask & CBEIF_TEXT) && is_textW(wstr)) {
     len = WideCharToMultiByte (CP_ACP, 0, wstr, -1, 0, 0, ((void*)0), ((void*)0));
     if (len > 0) {
                astr = Alloc ((len + 1)*sizeof(CHAR));
  if (!astr) return 0;
  WideCharToMultiByte (CP_ACP, 0, wstr, -1, astr, len, 0, 0);
  hdr->ceItem.pszText = (LPWSTR)astr;
     }
 }

 if (code == CBEN_ENDEDITW) code = CBEN_ENDEDITA;
 else if (code == CBEN_GETDISPINFOW) code = CBEN_GETDISPINFOA;
 else if (code == CBEN_DRAGBEGINW) code = CBEN_DRAGBEGINA;

 ret = COMBOEX_Notify (infoPtr, code, (NMHDR *)hdr);

 if (astr && hdr->ceItem.pszText == (LPWSTR)astr)
     hdr->ceItem.pszText = wstr;

 Free(astr);

 return ret;
    }
}
