
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int UnicodeChar; } ;
struct TYPE_9__ {int dwControlKeyState; int wVirtualKeyCode; TYPE_1__ uChar; } ;
struct TYPE_10__ {TYPE_2__ KeyEvent; } ;
struct TYPE_12__ {TYPE_3__ Event; } ;
struct TYPE_11__ {int maxx; int maxy; scalar_t__ bInsert; } ;
typedef int SHORT ;
typedef TYPE_4__* PCONSOLE_STATE ;
typedef int* LPSTR ;
typedef int* LPCSTR ;
typedef int INT ;
typedef TYPE_5__ INPUT_RECORD ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int CONSOLE_ConInKey (TYPE_5__*) ;
 int CONSOLE_ConOutChar (int) ;
 int CONSOLE_ConOutPrintf (char*,...) ;
 int CONSOLE_GetCursorX () ;
 int CONSOLE_GetCursorXY (int*,int*) ;
 int CONSOLE_GetCursorY () ;
 int CONSOLE_SetCursorType (scalar_t__,scalar_t__) ;
 int CONSOLE_SetCursorXY (int,int) ;
 int ClearCommandLine (int*,int,int,int) ;
 int ConOutPrintf (char*,int*) ;
 scalar_t__ FALSE ;
 int GetCursorXY (int*,int*) ;
 int History (int,int*) ;
 int History_del_current_entry (int*) ;
 int History_move_to_bottom () ;
 int LEFT_ALT_PRESSED ;
 int LEFT_CTRL_PRESSED ;
 int* PeekHistory (int) ;
 int RIGHT_ALT_PRESSED ;
 int RIGHT_CTRL_PRESSED ;
 scalar_t__ TRUE ;
 int maxx ;
 scalar_t__ maxy ;
 int memset (int*,int ,int) ;
 int strlen (int*) ;

__attribute__((used)) static
BOOL
ReadCommand(
    PCONSOLE_STATE State,
    LPSTR str,
    INT maxlen)
{
    SHORT orgx;
    SHORT orgy;
    SHORT curx;
    SHORT cury;
    SHORT tempscreen;
    INT count;
    INT current = 0;
    INT charcount = 0;
    INPUT_RECORD ir;
    CHAR ch;
    BOOL bReturn = FALSE;
    BOOL bCharInput;






    CONSOLE_GetCursorXY(&orgx, &orgy);
    curx = orgx;
    cury = orgy;

    memset(str, 0, maxlen * sizeof(CHAR));

    CONSOLE_SetCursorType(State->bInsert, TRUE);

    do
    {
        bReturn = FALSE;
        CONSOLE_ConInKey(&ir);

        if (ir.Event.KeyEvent.dwControlKeyState &
            (RIGHT_ALT_PRESSED |LEFT_ALT_PRESSED|
             RIGHT_CTRL_PRESSED|LEFT_CTRL_PRESSED) )
        {
            switch (ir.Event.KeyEvent.wVirtualKeyCode)
            {
            }
        }

        bCharInput = FALSE;

        switch (ir.Event.KeyEvent.wVirtualKeyCode)
        {
            case 139:

                if (current > 0 && charcount > 0)
                {
                    if (current == charcount)
                    {

                        str[current - 1] = L'\0';
                        if (CONSOLE_GetCursorX () != 0)
                        {
                            CONSOLE_ConOutPrintf("\b \b");
                            curx--;
                        }
                        else
                        {
                            CONSOLE_SetCursorXY((SHORT)(State->maxx - 1), (SHORT)(CONSOLE_GetCursorY () - 1));
                            CONSOLE_ConOutChar(' ');
                            CONSOLE_SetCursorXY((SHORT)(State->maxx - 1), (SHORT)(CONSOLE_GetCursorY () - 1));
                            cury--;
                            curx = State->maxx - 1;
                        }
                    }
                    else
                    {
                        for (count = current - 1; count < charcount; count++)
                            str[count] = str[count + 1];
                        if (CONSOLE_GetCursorX () != 0)
                        {
                            CONSOLE_SetCursorXY ((SHORT)(CONSOLE_GetCursorX () - 1), CONSOLE_GetCursorY ());
                            curx--;
                        }
                        else
                        {
                            CONSOLE_SetCursorXY ((SHORT)(State->maxx - 1), (SHORT)(CONSOLE_GetCursorY () - 1));
                            cury--;
                            curx = State->maxx - 1;
                        }
                        CONSOLE_GetCursorXY(&curx, &cury);
                        CONSOLE_ConOutPrintf("%s ", &str[current - 1]);
                        CONSOLE_SetCursorXY(curx, cury);
                    }
                    charcount--;
                    current--;
                }
                break;

            case 132:

                State->bInsert ^= TRUE;
                CONSOLE_SetCursorType(State->bInsert, TRUE);
                break;

            case 138:

                if (current != charcount && charcount > 0)
                {
                    for (count = current; count < charcount; count++)
                        str[count] = str[count + 1];
                    charcount--;
                    CONSOLE_GetCursorXY(&curx, &cury);
                    CONSOLE_ConOutPrintf("%s ", &str[current]);
                    CONSOLE_SetCursorXY(curx, cury);
                }
                break;

            case 133:

                if (current != 0)
                {
                    CONSOLE_SetCursorXY(orgx, orgy);
                    curx = orgx;
                    cury = orgy;
                    current = 0;
                }
                break;

            case 136:

                if (current != charcount)
                {
                    CONSOLE_SetCursorXY(orgx, orgy);
                    CONSOLE_ConOutPrintf("%s", str);
                    CONSOLE_GetCursorXY(&curx, &cury);
                    current = charcount;
                }
                break;

            case 'M':
            case 'C':

                bCharInput = TRUE;
                if (!(ir.Event.KeyEvent.dwControlKeyState &
                    (RIGHT_CTRL_PRESSED|LEFT_CTRL_PRESSED)))
                {
                    break;
                }

            case 130:






                str[charcount] = '\0';
                CONSOLE_ConOutChar('\n');
                bReturn = TRUE;
                break;

            case 135:

                ClearCommandLine (str, maxlen, orgx, orgy);
                curx = orgx;
                cury = orgy;
                current = charcount = 0;
                break;





            case 128:
                break;

            case 137:
                break;

            case 131:

                if (current > 0)
                {
                    current--;
                    if (CONSOLE_GetCursorX() == 0)
                    {
                        CONSOLE_SetCursorXY((SHORT)(State->maxx - 1), (SHORT)(CONSOLE_GetCursorY () - 1));
                        curx = State->maxx - 1;
                        cury--;
                    }
                    else
                    {
                        CONSOLE_SetCursorXY((SHORT)(CONSOLE_GetCursorX () - 1), CONSOLE_GetCursorY ());
                        curx--;
                    }
                }
                break;

            case 129:

                if (current != charcount)
                {
                    current++;
                    if (CONSOLE_GetCursorX() == State->maxx - 1)
                    {
                        CONSOLE_SetCursorXY(0, (SHORT)(CONSOLE_GetCursorY () + 1));
                        curx = 0;
                        cury++;
                    }
                    else
                    {
                        CONSOLE_SetCursorXY((SHORT)(CONSOLE_GetCursorX () + 1), CONSOLE_GetCursorY ());
                        curx++;
                    }
                }
                break;

            default:

                bCharInput = TRUE;

        }

        ch = ir.Event.KeyEvent.uChar.UnicodeChar;
        if (ch >= 32 && (charcount != (maxlen - 2)) && bCharInput)
        {

            if (State->bInsert && current != charcount)
            {


                tempscreen = strlen(str + current) + curx;
                if ((tempscreen % State->maxx) == (State->maxx - 1) &&
                    (tempscreen / State->maxx) + cury == (State->maxy - 1))
                {
                    orgy--;
                    cury--;
                }

                for (count = charcount; count > current; count--)
                    str[count] = str[count - 1];
                str[current++] = ch;
                if (curx == State->maxx - 1)
                    curx = 0, cury++;
                else
                    curx++;
                CONSOLE_ConOutPrintf("%s", &str[current - 1]);
                CONSOLE_SetCursorXY(curx, cury);
                charcount++;
            }
            else
            {
                if (current == charcount)
                    charcount++;
                str[current++] = ch;
                if (CONSOLE_GetCursorX () == State->maxx - 1 && CONSOLE_GetCursorY () == State->maxy - 1)
                    orgy--, cury--;
                if (CONSOLE_GetCursorX () == State->maxx - 1)
                    curx = 0, cury++;
                else
                    curx++;
                CONSOLE_ConOutChar(ch);
            }
        }
    }
    while (!bReturn);

    CONSOLE_SetCursorType(State->bInsert, TRUE);

    return TRUE;
}
