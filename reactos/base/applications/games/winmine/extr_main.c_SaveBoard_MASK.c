#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {int /*<<< orphan*/ * best_time; int /*<<< orphan*/ * best_name; int /*<<< orphan*/  IsMarkQ; int /*<<< orphan*/  mines; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; int /*<<< orphan*/  difficulty; TYPE_1__ pos; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_2__ BOARD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  MAX_PLAYER_NAME_SIZE ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * difficultyW ; 
 int /*<<< orphan*/ * heightW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * markW ; 
 int /*<<< orphan*/ * minesW ; 
 int /*<<< orphan*/  nameW ; 
 int /*<<< orphan*/  registry_key ; 
 int /*<<< orphan*/  timeW ; 
 int /*<<< orphan*/ * widthW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * xposW ; 
 int /*<<< orphan*/ * yposW ; 

__attribute__((used)) static void FUNC6( BOARD *p_board )
{
    HKEY hkey;
    unsigned i;
    WCHAR data[MAX_PLAYER_NAME_SIZE+1];
    WCHAR key_name[8];

    if( FUNC1( HKEY_CURRENT_USER, registry_key,
	        0, NULL,
                REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL,
                &hkey, NULL ) != ERROR_SUCCESS)
        return;

    FUNC2( hkey, xposW, 0, REG_DWORD, (LPBYTE) &p_board->pos.x, sizeof(p_board->pos.x) );
    FUNC2( hkey, yposW, 0, REG_DWORD, (LPBYTE) &p_board->pos.y, sizeof(p_board->pos.y) );
    FUNC2( hkey, difficultyW, 0, REG_DWORD, (LPBYTE) &p_board->difficulty, sizeof(p_board->difficulty) );
    FUNC2( hkey, heightW, 0, REG_DWORD, (LPBYTE) &p_board->rows, sizeof(p_board->rows) );
    FUNC2( hkey, widthW, 0, REG_DWORD, (LPBYTE) &p_board->cols, sizeof(p_board->cols) );
    FUNC2( hkey, minesW, 0, REG_DWORD, (LPBYTE) &p_board->mines, sizeof(p_board->mines) );
    FUNC2( hkey, markW, 0, REG_DWORD, (LPBYTE) &p_board->IsMarkQ, sizeof(p_board->IsMarkQ) );

    for( i = 0; i < 3; i++ ) {
        FUNC5( key_name, nameW, i+1 );
        FUNC3( data, p_board->best_name[i], sizeof(data)/sizeof(WCHAR) );
        FUNC2( hkey, key_name, 0, REG_SZ, (LPBYTE) data, (FUNC4(data)+1) * sizeof(WCHAR) );
    }

    for( i = 0; i < 3; i++ ) {
        FUNC5( key_name, timeW, i+1 );
        FUNC2( hkey, key_name, 0, REG_DWORD, (LPBYTE) &p_board->best_time[i], sizeof(p_board->best_time[i]) );
    }
    FUNC0( hkey );
}