
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lf ;
typedef int UINT ;
struct TYPE_12__ {int * crColor; } ;
struct TYPE_11__ {int lfFaceName; int lfCharSet; int lfWeight; scalar_t__ lfWidth; scalar_t__ lfHeight; } ;
struct TYPE_10__ {int right; scalar_t__ top; scalar_t__ left; scalar_t__ bottom; } ;
typedef char TCHAR ;
typedef TYPE_1__ RECT ;
typedef int LPRECT ;
typedef TYPE_2__ LOGFONT ;
typedef int INT ;
typedef int HFONT ;
typedef int HDC ;
typedef TYPE_3__ COLOR_SCHEME ;
typedef int COLORREF ;
typedef int BOOL ;


 int BF_MIDDLE ;
 int BF_RECT ;
 int BF_SOFT ;
 size_t COLOR_BTNHIGHLIGHT ;
 size_t COLOR_BTNSHADOW ;
 size_t COLOR_BTNTEXT ;
 int CreateFontIndirect (TYPE_2__*) ;
 int DEFAULT_CHARSET ;





 int DFCS_INACTIVE ;
 int DFCS_PUSHED ;
 int DeleteObject (int ) ;
 int EDGE_RAISED ;
 int EDGE_SUNKEN ;
 int FALSE ;
 int FW_NORMAL ;
 int GetBkMode (int ) ;
 int GetTextColor (int ) ;
 int MyIntDrawRectEdge (int ,int ,int ,int,TYPE_3__*) ;
 int MyMakeSquareRect (int ,TYPE_1__*) ;
 int OffsetRect (TYPE_1__*,int,int) ;
 int SelectObject (int ,int ) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TEXT (char*) ;
 int TRANSPARENT ;
 int TRUE ;
 int TextOut (int ,scalar_t__,scalar_t__,char*,int) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int lstrcpy (int ,int ) ;

__attribute__((used)) static BOOL
MyDrawFrameCaption(HDC dc, LPRECT r, UINT uFlags, COLOR_SCHEME *scheme)
{
    LOGFONT lf;
    HFONT hFont, hOldFont;
    COLORREF clrsave;
    RECT myr;
    INT bkmode;
    TCHAR Symbol;
    switch(uFlags & 0xff)
    {
    case 132:
        Symbol = 'r';
        break;
    case 131:
        Symbol = 's';
        break;
    case 129:
        Symbol = '0';
        break;
    case 130:
        Symbol = '1';
        break;
    case 128:
        Symbol = '2';
        break;
    default:
        return FALSE;
    }
    MyIntDrawRectEdge(dc, r, (uFlags & DFCS_PUSHED) ? EDGE_SUNKEN : EDGE_RAISED, BF_RECT | BF_MIDDLE | BF_SOFT, scheme);
    ZeroMemory(&lf, sizeof(lf));
    MyMakeSquareRect(r, &myr);
    myr.left += 1;
    myr.top += 1;
    myr.right -= 1;
    myr.bottom -= 1;
    if (uFlags & DFCS_PUSHED)
       OffsetRect(&myr,1,1);
    lf.lfHeight = myr.bottom - myr.top;
    lf.lfWidth = 0;
    lf.lfWeight = FW_NORMAL;
    lf.lfCharSet = DEFAULT_CHARSET;
    lstrcpy(lf.lfFaceName, TEXT("Marlett"));
    hFont = CreateFontIndirect(&lf);

    hOldFont = SelectObject(dc, hFont);
    clrsave = GetTextColor(dc);
    bkmode = GetBkMode(dc);

    SetBkMode(dc, TRANSPARENT);
    if (uFlags & DFCS_INACTIVE)
    {

        SetTextColor(dc, scheme->crColor[COLOR_BTNHIGHLIGHT]);
        TextOut(dc, myr.left + 1, myr.top + 1, &Symbol, 1);
    }
    SetTextColor(dc, scheme->crColor[(uFlags & DFCS_INACTIVE) ? COLOR_BTNSHADOW : COLOR_BTNTEXT]);

    TextOut(dc, myr.left, myr.top, &Symbol, 1);

    SetTextColor(dc, clrsave);
    SelectObject(dc, hOldFont);
    SetBkMode(dc, bkmode);
    DeleteObject(hFont);
    return TRUE;
}
