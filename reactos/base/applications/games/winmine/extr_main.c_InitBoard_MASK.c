#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ IsMarkQ; scalar_t__ difficulty; int /*<<< orphan*/  hWnd; int /*<<< orphan*/  hInst; void* hLedsBMP; void* hFacesBMP; void* hMinesBMP; } ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  TYPE_1__ BOARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDI_FACES ; 
 int /*<<< orphan*/  IDI_LEDS ; 
 int /*<<< orphan*/  IDI_MINES ; 
 unsigned int IDM_BEGINNER ; 
 unsigned int IDM_MARKQ ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MF_CHECKED ; 
 int /*<<< orphan*/  MF_UNCHECKED ; 

__attribute__((used)) static void FUNC6( BOARD *p_board )
{
    HMENU hMenu;

    p_board->hMinesBMP = FUNC3( p_board->hInst, FUNC5(IDI_MINES));
    p_board->hFacesBMP = FUNC3( p_board->hInst, FUNC5(IDI_FACES));
    p_board->hLedsBMP = FUNC3( p_board->hInst, FUNC5(IDI_LEDS));

    FUNC4( p_board );

    hMenu = FUNC2( p_board->hWnd );
    FUNC1( hMenu, IDM_BEGINNER + (unsigned) p_board->difficulty,
            MF_CHECKED );
    if( p_board->IsMarkQ )
        FUNC1( hMenu, IDM_MARKQ, MF_CHECKED );
    else
        FUNC1( hMenu, IDM_MARKQ, MF_UNCHECKED );
    FUNC0( p_board );
}