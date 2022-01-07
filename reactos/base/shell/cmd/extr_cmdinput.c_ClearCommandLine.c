
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SHORT ;
typedef int LPTSTR ;
typedef scalar_t__ INT ;


 int ConOutChar (int ) ;
 int SetCursorXY (int ,int ) ;
 int _T (char) ;
 scalar_t__ _tcslen (int ) ;
 int _tcsnset (int ,int ,scalar_t__) ;

__attribute__((used)) static VOID
ClearCommandLine(LPTSTR str, INT maxlen, SHORT orgx, SHORT orgy)
{
    INT count;

    SetCursorXY (orgx, orgy);
    for (count = 0; count < (INT)_tcslen (str); count++)
        ConOutChar (_T(' '));
    _tcsnset (str, _T('\0'), maxlen);
    SetCursorXY (orgx, orgy);
}
