
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef char* PCSTR ;


 int ATTR (int ,int ) ;
 int COLOR_BLACK ;
 int COLOR_GRAY ;
 int D_HORZ ;
 int D_VERT ;
 char KEY_ENTER ;
 char KEY_ESC ;
 char KEY_EXTENDED ;
 char KEY_SPACE ;
 char MachConsGetCh () ;
 scalar_t__ MachConsKbHit () ;
 int MachHwIdle () ;
 int TRUE ;
 int TuiDrawBox (int,int,int,int,int ,int ,int ,int ,int ) ;
 int TuiUpdateDateTime () ;
 int UiDrawStatusText (char*) ;
 int UiDrawText (int,int,char*,int ) ;
 int UiMessageBoxBgColor ;
 int UiMessageBoxFgColor ;
 unsigned int UiScreenHeight ;
 int UiScreenWidth ;
 int VideoCopyOffScreenBufferToVRAM () ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

VOID TuiMessageBoxCritical(PCSTR MessageText)
{
    int width = 8;
    unsigned int height = 1;
    int curline = 0;
    int k;
    size_t i , j;
    int x1, x2, y1, y2;
    char temp[260];
    char key;


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


    strcpy(temp, "   OK   ");
    UiDrawText(x1+((x2-x1)/2)-3, y2-2, temp, ATTR(COLOR_BLACK, COLOR_GRAY));


    UiDrawStatusText("Press ENTER to continue");

    VideoCopyOffScreenBufferToVRAM();

    for (;;)
    {
        if (MachConsKbHit())
        {
            key = MachConsGetCh();
            if (key == KEY_EXTENDED)
                key = MachConsGetCh();

            if ((key == KEY_ENTER) || (key == KEY_SPACE) || (key == KEY_ESC))
                break;
        }

        TuiUpdateDateTime();

        VideoCopyOffScreenBufferToVRAM();

        MachHwIdle();
    }
}
