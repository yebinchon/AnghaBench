
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef int INT ;
typedef int HDC ;
typedef int COLORREF ;
typedef scalar_t__ BOOL ;


 int DFCS_FLAT ;
 int DFCS_INACTIVE ;
 int DFCS_PUSHED ;
 int DFCS_SCROLLDOWN ;
 int DFCS_SCROLLLEFT ;
 int DFCS_SCROLLRIGHT ;
 int DFCS_SCROLLUP ;
 int DFC_SCROLL ;
 int DrawFrameControl (int ,TYPE_1__*,int ,int) ;



 int PGF_INVISIBLE ;

 int TRACE (char*,int ,int) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void
PAGER_DrawButton(HDC hdc, COLORREF clrBk, RECT rc,
                 BOOL horz, BOOL topLeft, INT btnState)
{
    UINT flags;

    TRACE("rc = %s, btnState = %d\n", wine_dbgstr_rect(&rc), btnState);

    if (btnState == PGF_INVISIBLE)
        return;

    if ((rc.right - rc.left <= 0) || (rc.bottom - rc.top <= 0))
        return;

    if (horz)
        flags = topLeft ? DFCS_SCROLLLEFT : DFCS_SCROLLRIGHT;
    else
        flags = topLeft ? DFCS_SCROLLUP : DFCS_SCROLLDOWN;

    switch (btnState)
    {
    case 129:
        break;
    case 128:
        flags |= DFCS_FLAT;
        break;
    case 131:
        flags |= DFCS_PUSHED;
        break;
    case 130:
        flags |= DFCS_INACTIVE | DFCS_FLAT;
        break;
    }
    DrawFrameControl( hdc, &rc, DFC_SCROLL, flags );
}
