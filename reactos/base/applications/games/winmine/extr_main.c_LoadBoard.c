
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int data ;
typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int* best_time; int * best_name; int hInst; int IsMarkQ; int difficulty; int mines; int cols; int rows; TYPE_1__ pos; } ;
typedef int * LPBYTE ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_2__ BOARD ;


 int BEGINNER ;
 int BEGINNER_COLS ;
 int BEGINNER_MINES ;
 int BEGINNER_ROWS ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int IDS_NOBODY ;
 int KEY_QUERY_VALUE ;
 int LoadStringW (int ,int ,int ,int) ;
 int MAX_PLAYER_NAME_SIZE ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int *,int *,int*,int *,int*) ;
 int TRUE ;
 int * difficultyW ;
 int * heightW ;
 int lstrcpynW (int ,int *,int) ;
 int * markW ;
 int * minesW ;
 int nameW ;
 int registry_key ;
 int timeW ;
 int * widthW ;
 int wsprintfW (int *,int ,unsigned int) ;
 int * xposW ;
 int * yposW ;

__attribute__((used)) static void LoadBoard( BOARD *p_board )
{
    DWORD size;
    DWORD type;
    HKEY hkey;
    WCHAR data[MAX_PLAYER_NAME_SIZE+1];
    WCHAR key_name[8];
    unsigned i;

    RegOpenKeyExW( HKEY_CURRENT_USER, registry_key, 0, KEY_QUERY_VALUE, &hkey );

    size = sizeof( p_board->pos.x );
    if( RegQueryValueExW( hkey, xposW, ((void*)0), &type, (BYTE*) &p_board->pos.x, &size ) )
 p_board->pos.x = 0;

    size = sizeof( p_board->pos.y );
    if( RegQueryValueExW( hkey, yposW, ((void*)0), &type, (BYTE*) &p_board->pos.y, &size ) )
        p_board->pos.y = 0;

    size = sizeof( p_board->rows );
    if( RegQueryValueExW( hkey, heightW, ((void*)0), &type, (BYTE*) &p_board->rows, &size ) )
        p_board->rows = BEGINNER_ROWS;

    size = sizeof( p_board->cols );
    if( RegQueryValueExW( hkey, widthW, ((void*)0), &type, (BYTE*) &p_board->cols, &size ) )
        p_board->cols = BEGINNER_COLS;

    size = sizeof( p_board->mines );
    if( RegQueryValueExW( hkey, minesW, ((void*)0), &type, (BYTE*) &p_board->mines, &size ) )
        p_board->mines = BEGINNER_MINES;

    size = sizeof( p_board->difficulty );
    if( RegQueryValueExW( hkey, difficultyW, ((void*)0), &type, (BYTE*) &p_board->difficulty, &size ) )
        p_board->difficulty = BEGINNER;

    size = sizeof( p_board->IsMarkQ );
    if( RegQueryValueExW( hkey, markW, ((void*)0), &type, (BYTE*) &p_board->IsMarkQ, &size ) )
        p_board->IsMarkQ = TRUE;

    for( i = 0; i < 3; i++ ) {
        wsprintfW( key_name, nameW, i+1 );
        size = sizeof( data );
        if( RegQueryValueExW( hkey, key_name, ((void*)0), &type,
                (LPBYTE) data, &size ) == ERROR_SUCCESS )
            lstrcpynW( p_board->best_name[i], data, sizeof(p_board->best_name[i])/sizeof(WCHAR) );
        else
            LoadStringW( p_board->hInst, IDS_NOBODY, p_board->best_name[i], MAX_PLAYER_NAME_SIZE+1 );
    }

    for( i = 0; i < 3; i++ ) {
        wsprintfW( key_name, timeW, i+1 );
        size = sizeof( p_board->best_time[i] );
        if( RegQueryValueExW( hkey, key_name, ((void*)0), &type, (BYTE*) &p_board->best_time[i], &size ) )
            p_board->best_time[i] = 999;
    }
    RegCloseKey( hkey );
}
