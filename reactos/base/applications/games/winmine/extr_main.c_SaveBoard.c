
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int data ;
typedef int WCHAR ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_5__ {int * best_time; int * best_name; int IsMarkQ; int mines; int cols; int rows; int difficulty; TYPE_1__ pos; } ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef TYPE_2__ BOARD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_WRITE ;
 int MAX_PLAYER_NAME_SIZE ;
 int REG_DWORD ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int RegSetValueExW (int ,int *,int ,int ,int ,int) ;
 int * difficultyW ;
 int * heightW ;
 int lstrcpynW (int *,int ,int) ;
 int lstrlenW (int *) ;
 int * markW ;
 int * minesW ;
 int nameW ;
 int registry_key ;
 int timeW ;
 int * widthW ;
 int wsprintfW (int *,int ,unsigned int) ;
 int * xposW ;
 int * yposW ;

__attribute__((used)) static void SaveBoard( BOARD *p_board )
{
    HKEY hkey;
    unsigned i;
    WCHAR data[MAX_PLAYER_NAME_SIZE+1];
    WCHAR key_name[8];

    if( RegCreateKeyExW( HKEY_CURRENT_USER, registry_key,
         0, ((void*)0),
                REG_OPTION_NON_VOLATILE, KEY_WRITE, ((void*)0),
                &hkey, ((void*)0) ) != ERROR_SUCCESS)
        return;

    RegSetValueExW( hkey, xposW, 0, REG_DWORD, (LPBYTE) &p_board->pos.x, sizeof(p_board->pos.x) );
    RegSetValueExW( hkey, yposW, 0, REG_DWORD, (LPBYTE) &p_board->pos.y, sizeof(p_board->pos.y) );
    RegSetValueExW( hkey, difficultyW, 0, REG_DWORD, (LPBYTE) &p_board->difficulty, sizeof(p_board->difficulty) );
    RegSetValueExW( hkey, heightW, 0, REG_DWORD, (LPBYTE) &p_board->rows, sizeof(p_board->rows) );
    RegSetValueExW( hkey, widthW, 0, REG_DWORD, (LPBYTE) &p_board->cols, sizeof(p_board->cols) );
    RegSetValueExW( hkey, minesW, 0, REG_DWORD, (LPBYTE) &p_board->mines, sizeof(p_board->mines) );
    RegSetValueExW( hkey, markW, 0, REG_DWORD, (LPBYTE) &p_board->IsMarkQ, sizeof(p_board->IsMarkQ) );

    for( i = 0; i < 3; i++ ) {
        wsprintfW( key_name, nameW, i+1 );
        lstrcpynW( data, p_board->best_name[i], sizeof(data)/sizeof(WCHAR) );
        RegSetValueExW( hkey, key_name, 0, REG_SZ, (LPBYTE) data, (lstrlenW(data)+1) * sizeof(WCHAR) );
    }

    for( i = 0; i < 3; i++ ) {
        wsprintfW( key_name, timeW, i+1 );
        RegSetValueExW( hkey, key_name, 0, REG_DWORD, (LPBYTE) &p_board->best_time[i], sizeof(p_board->best_time[i]) );
    }
    RegCloseKey( hkey );
}
