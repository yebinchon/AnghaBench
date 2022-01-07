
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bm ;
struct TYPE_3__ {int bmWidth; int bmHeight; } ;
typedef int RECT ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int BOOL ;
typedef TYPE_1__ BITMAP ;


 int CBitHeight ;
 int CBitWidth ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int FALSE ;
 int GetObjectW (scalar_t__,int,TYPE_1__*) ;
 int InvertRect (int ,int *) ;
 scalar_t__ LoadBitmapW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int OBM_COMBO ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetRect (int *,int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 scalar_t__ hComboBmp ;

__attribute__((used)) static BOOL COMBO_Init(void)
{
  HDC hDC;

  if( hComboBmp ) return TRUE;
  if( (hDC = CreateCompatibleDC(0)) )
  {
    BOOL bRet = FALSE;
    if( (hComboBmp = LoadBitmapW(0, MAKEINTRESOURCEW(OBM_COMBO))) )
    {
      BITMAP bm;
      HBITMAP hPrevB;
      RECT r;

      GetObjectW( hComboBmp, sizeof(bm), &bm );
      CBitHeight = bm.bmHeight;
      CBitWidth = bm.bmWidth;

      TRACE("combo bitmap [%i,%i]\n", CBitWidth, CBitHeight );

      hPrevB = SelectObject( hDC, hComboBmp);
      SetRect( &r, 0, 0, CBitWidth, CBitHeight );
      InvertRect( hDC, &r );
      SelectObject( hDC, hPrevB );
      bRet = TRUE;
    }
    DeleteDC( hDC );
    return bRet;
  }
  return FALSE;
}
