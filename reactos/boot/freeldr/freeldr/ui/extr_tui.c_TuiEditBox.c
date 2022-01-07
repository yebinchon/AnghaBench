
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int PVOID ;
typedef char* PCSTR ;
typedef char* PCHAR ;
typedef int INT ;
typedef scalar_t__ CHAR ;
typedef scalar_t__ BOOLEAN ;


 int ATTR (int ,int ) ;
 int D_HORZ ;
 int D_VERT ;
 scalar_t__ FALSE ;
 int FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (int ,int ) ;
 scalar_t__ KEY_BACKSPACE ;
 scalar_t__ KEY_DELETE ;
 scalar_t__ KEY_END ;
 scalar_t__ KEY_ENTER ;
 scalar_t__ KEY_ESC ;
 scalar_t__ KEY_EXTENDED ;
 scalar_t__ KEY_HOME ;
 scalar_t__ KEY_LEFT ;
 scalar_t__ KEY_RIGHT ;
 int MachBeep () ;
 scalar_t__ MachConsGetCh () ;
 scalar_t__ MachConsKbHit () ;
 int MachHwIdle () ;
 int MachVideoHideShowTextCursor (scalar_t__) ;
 int MachVideoSetTextCursorPosition (int,int) ;
 int TAG_TUI_SCREENBUFFER ;
 scalar_t__ TRUE ;
 int TuiDrawBox (int,int,int,int,int ,int ,scalar_t__,scalar_t__,int ) ;
 int TuiRestoreScreen (int ) ;
 int TuiSaveScreen (int ) ;
 int TuiUpdateDateTime () ;
 int UiDrawStatusText (char*) ;
 int UiDrawText (int,int,scalar_t__*,int ) ;
 int UiDrawText2 (size_t,int,size_t,char*,int ) ;
 int UiEditBoxBgColor ;
 int UiEditBoxTextColor ;
 int UiFillArea (size_t,int,size_t,int,char,int ) ;
 int UiMessageBoxBgColor ;
 int UiMessageBoxFgColor ;
 int UiScreenHeight ;
 int UiScreenWidth ;
 int VideoCopyOffScreenBufferToVRAM () ;
 int memmove (char*,char*,size_t) ;
 size_t min (size_t,size_t) ;
 int strlen (char*) ;

BOOLEAN TuiEditBox(PCSTR MessageText, PCHAR EditTextBuffer, ULONG Length)
{
    INT width = 8;
    ULONG height = 1;
    INT curline = 0;
    INT k;
    size_t i , j;
    INT x1, x2, y1, y2;
    CHAR temp[260];
    CHAR key;
    BOOLEAN Extended;
    INT EditBoxLine;
    ULONG EditBoxStartX, EditBoxEndX;
    INT EditBoxCursorX;
    ULONG EditBoxTextLength, EditBoxTextPosition;
    INT EditBoxTextDisplayIndex;
    BOOLEAN ReturnCode;
    PVOID ScreenBuffer;


    ScreenBuffer = FrLdrTempAlloc(UiScreenWidth * UiScreenHeight * 2,
                                  TAG_TUI_SCREENBUFFER);
    TuiSaveScreen(ScreenBuffer);


    for (i=0; i<strlen(MessageText); i++)
    {
        if (MessageText[i] == '\n')
            height++;
    }


    for (i=0,j=0,k=0; i<height; i++)
    {
        while ((MessageText[j] != '\n') && (MessageText[j] != 0))
        {
            j++;
            k++;
        }

        if (k > width)
            width = k;

        k = 0;
        j++;
    }


    x1 = (UiScreenWidth - (width+2))/2;
    x2 = x1 + width + 3;
    y1 = ((UiScreenHeight - height - 2)/2) + 1;
    y2 = y1 + height + 4;


    TuiDrawBox(x1, y1, x2, y2, D_VERT, D_HORZ, TRUE, TRUE, ATTR(UiMessageBoxFgColor, UiMessageBoxBgColor));


    for (i=0,j=0; i<strlen(MessageText)+1; i++)
    {
        if ((MessageText[i] == '\n') || (MessageText[i] == 0))
        {
            temp[j] = 0;
            j = 0;
            UiDrawText(x1+2, y1+1+curline, temp, ATTR(UiMessageBoxFgColor, UiMessageBoxBgColor));
            curline++;
        }
        else
            temp[j++] = MessageText[i];
    }

    EditBoxTextLength = (ULONG)strlen(EditTextBuffer);
    EditBoxTextLength = min(EditBoxTextLength, Length - 1);
    EditBoxTextPosition = 0;
    EditBoxLine = y2 - 2;
    EditBoxStartX = x1 + 3;
    EditBoxEndX = x2 - 3;


    UiFillArea(EditBoxStartX, EditBoxLine, EditBoxEndX, EditBoxLine, ' ', ATTR(UiEditBoxTextColor, UiEditBoxBgColor));
    UiDrawText2(EditBoxStartX, EditBoxLine, EditBoxEndX - EditBoxStartX + 1, EditTextBuffer, ATTR(UiEditBoxTextColor, UiEditBoxBgColor));


    EditBoxCursorX = EditBoxStartX;
    MachVideoSetTextCursorPosition(EditBoxCursorX, EditBoxLine);
    MachVideoHideShowTextCursor(TRUE);


    UiDrawStatusText("Press ENTER to continue, or ESC to cancel");

    VideoCopyOffScreenBufferToVRAM();






    for (;;)
    {
        if (MachConsKbHit())
        {
            Extended = FALSE;
            key = MachConsGetCh();
            if (key == KEY_EXTENDED)
            {
                Extended = TRUE;
                key = MachConsGetCh();
            }

            if (key == KEY_ENTER)
            {
                ReturnCode = TRUE;
                break;
            }
            else if (key == KEY_ESC)
            {
                ReturnCode = FALSE;
                break;
            }
            else if (key == KEY_BACKSPACE)
            {
                if ( (EditBoxTextLength > 0) && (EditBoxTextPosition > 0) &&
                     (EditBoxTextPosition <= EditBoxTextLength) )
                {
                    EditBoxTextPosition--;
                    memmove(EditTextBuffer + EditBoxTextPosition,
                            EditTextBuffer + EditBoxTextPosition + 1,
                            EditBoxTextLength - EditBoxTextPosition);
                    EditBoxTextLength--;
                    EditTextBuffer[EditBoxTextLength] = 0;
                }
                else
                {
                    MachBeep();
                }
            }
            else if (Extended && key == KEY_DELETE)
            {
                if ( (EditBoxTextLength > 0) &&
                     (EditBoxTextPosition < EditBoxTextLength) )
                {
                    memmove(EditTextBuffer + EditBoxTextPosition,
                            EditTextBuffer + EditBoxTextPosition + 1,
                            EditBoxTextLength - EditBoxTextPosition);
                    EditBoxTextLength--;
                    EditTextBuffer[EditBoxTextLength] = 0;
                }
                else
                {
                    MachBeep();
                }
            }
            else if (Extended && key == KEY_HOME)
            {
                EditBoxTextPosition = 0;
            }
            else if (Extended && key == KEY_END)
            {
                EditBoxTextPosition = EditBoxTextLength;
            }
            else if (Extended && key == KEY_RIGHT)
            {
                if (EditBoxTextPosition < EditBoxTextLength)
                    EditBoxTextPosition++;
                else
                    MachBeep();
            }
            else if (Extended && key == KEY_LEFT)
            {
                if (EditBoxTextPosition > 0)
                    EditBoxTextPosition--;
                else
                    MachBeep();
            }
            else if (!Extended)
            {
                if ( (EditBoxTextLength < Length - 1) &&
                     (EditBoxTextPosition < Length - 1) )
                {
                    memmove(EditTextBuffer + EditBoxTextPosition + 1,
                            EditTextBuffer + EditBoxTextPosition,
                            EditBoxTextLength - EditBoxTextPosition);
                    EditTextBuffer[EditBoxTextPosition] = key;
                    EditBoxTextPosition++;
                    EditBoxTextLength++;
                    EditTextBuffer[EditBoxTextLength] = 0;
                }
                else
                {
                    MachBeep();
                }
            }
            else
            {
                MachBeep();
            }
        }


        UiFillArea(EditBoxStartX, EditBoxLine, EditBoxEndX, EditBoxLine, ' ', ATTR(UiEditBoxTextColor, UiEditBoxBgColor));


        if (EditBoxTextPosition > (EditBoxEndX - EditBoxStartX))
        {
            EditBoxTextDisplayIndex = EditBoxTextPosition - (EditBoxEndX - EditBoxStartX);
            EditBoxCursorX = EditBoxEndX;
        }
        else
        {
            EditBoxTextDisplayIndex = 0;
            EditBoxCursorX = EditBoxStartX + EditBoxTextPosition;
        }
        UiDrawText2(EditBoxStartX, EditBoxLine, EditBoxEndX - EditBoxStartX + 1, &EditTextBuffer[EditBoxTextDisplayIndex], ATTR(UiEditBoxTextColor, UiEditBoxBgColor));


        MachVideoSetTextCursorPosition(EditBoxCursorX, EditBoxLine);

        TuiUpdateDateTime();

        VideoCopyOffScreenBufferToVRAM();

        MachHwIdle();
    }


    MachVideoHideShowTextCursor(FALSE);


    TuiRestoreScreen(ScreenBuffer);
    FrLdrTempFree(ScreenBuffer, TAG_TUI_SCREENBUFFER);

    return ReturnCode;
}
