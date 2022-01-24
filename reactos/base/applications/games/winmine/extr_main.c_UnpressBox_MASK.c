#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hWnd; int /*<<< orphan*/  hMinesBMP; } ;
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_1__ BOARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( BOARD *p_board, unsigned col, unsigned row )
{
    HDC hdc;
    HGDIOBJ hOldObj;
    HDC hMemDC;

    hdc = FUNC3( p_board->hWnd );
    hMemDC = FUNC0( hdc );
    hOldObj = FUNC5( hMemDC, p_board->hMinesBMP );

    FUNC2( hdc, hMemDC, p_board, col, row, FALSE );

    FUNC5( hMemDC, hOldObj );
    FUNC1( hMemDC );
    FUNC4( p_board->hWnd, hdc );
}