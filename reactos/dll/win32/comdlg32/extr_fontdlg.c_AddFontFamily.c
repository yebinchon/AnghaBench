
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_16__ {int Flags; } ;
struct TYPE_14__ {char* lfFaceName; int lfPitchAndFamily; scalar_t__ lfCharSet; } ;
struct TYPE_15__ {TYPE_4__ elfLogFont; } ;
struct TYPE_13__ {int added; } ;
struct TYPE_11__ {int ntmFlags; } ;
struct TYPE_12__ {TYPE_1__ ntmTm; } ;
typedef TYPE_2__ NEWTEXTMETRICEXW ;
typedef TYPE_3__* LPCFn_ENUMSTRUCT ;
typedef int LPARAM ;
typedef TYPE_4__ LOGFONTW ;
typedef int INT ;
typedef int HWND ;
typedef TYPE_5__ ENUMLOGFONTEXW ;
typedef TYPE_6__ CHOOSEFONTW ;


 scalar_t__ ANSI_CHARSET ;
 int CB_ADDSTRING ;
 int CB_ERR ;
 int CB_FINDSTRINGEXACT ;
 int CB_SETITEMDATA ;
 int CF_ANSIONLY ;
 int CF_FIXEDPITCHONLY ;
 int CF_NOVERTFONTS ;
 int CF_TTONLY ;
 int FIXED_PITCH ;
 int HIWORD (int ) ;
 int MAKELONG (int,int) ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRACE (char*,int ,int) ;
 int TRUETYPE_FONTTYPE ;
 int debugstr_w (char*) ;

__attribute__((used)) static INT AddFontFamily(const ENUMLOGFONTEXW *lpElfex, const NEWTEXTMETRICEXW *lpNTM,
                         UINT nFontType, const CHOOSEFONTW *lpcf, HWND hwnd, LPCFn_ENUMSTRUCT e)
{
    int i;
    WORD w;
    const LOGFONTW *lplf = &(lpElfex->elfLogFont);

    TRACE("font=%s (nFontType=%d)\n", debugstr_w(lplf->lfFaceName), nFontType);

    if (lpcf->Flags & CF_FIXEDPITCHONLY)
        if (!(lplf->lfPitchAndFamily & FIXED_PITCH))
            return 1;
    if (lpcf->Flags & CF_ANSIONLY)
        if (lplf->lfCharSet != ANSI_CHARSET)
            return 1;
    if (lpcf->Flags & CF_TTONLY)
        if (!(nFontType & TRUETYPE_FONTTYPE))
            return 1;
    if (lpcf->Flags & CF_NOVERTFONTS)
        if (lplf->lfFaceName[0] == '@')
            return 1;

    if (e) e->added++;

    i=SendMessageW(hwnd, CB_FINDSTRINGEXACT, 0, (LPARAM)lplf->lfFaceName);
    if (i == CB_ERR) {
        i = SendMessageW(hwnd, CB_ADDSTRING, 0, (LPARAM)lplf->lfFaceName);
        if( i != CB_ERR) {

            w = (lplf->lfPitchAndFamily) << 8 |
                (HIWORD(lpNTM->ntmTm.ntmFlags) & 0xff);
            SendMessageW(hwnd, CB_SETITEMDATA, i, MAKELONG(nFontType,w));
        }
    }
    return 1;
}
