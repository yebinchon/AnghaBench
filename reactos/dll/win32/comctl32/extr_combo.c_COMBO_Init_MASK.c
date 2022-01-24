#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bm ;
struct TYPE_3__ {int /*<<< orphan*/  bmWidth; int /*<<< orphan*/  bmHeight; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  CBitHeight ; 
 int /*<<< orphan*/  CBitWidth ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBM_COMBO ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ hComboBmp ; 

__attribute__((used)) static BOOL FUNC9(void)
{
  HDC		hDC;

  if( hComboBmp ) return TRUE;
  if( (hDC = FUNC0(0)) )
  {
    BOOL	bRet = FALSE;
    if( (hComboBmp = FUNC4(0, FUNC5(OBM_COMBO))) )
    {
      BITMAP      bm;
      HBITMAP     hPrevB;
      RECT        r;

      FUNC2( hComboBmp, sizeof(bm), &bm );
      CBitHeight = bm.bmHeight;
      CBitWidth  = bm.bmWidth;

      FUNC8("combo bitmap [%i,%i]\n", CBitWidth, CBitHeight );

      hPrevB = FUNC6( hDC, hComboBmp);
      FUNC7( &r, 0, 0, CBitWidth, CBitHeight );
      FUNC3( hDC, &r );
      FUNC6( hDC, hPrevB );
      bRet = TRUE;
    }
    FUNC1( hDC );
    return bRet;
  }
  return FALSE;
}