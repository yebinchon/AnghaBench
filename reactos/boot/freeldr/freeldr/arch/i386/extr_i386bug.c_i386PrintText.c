
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MachVideoPutChar (char,int ,scalar_t__,int ) ;
 int SCREEN_ATTR ;
 scalar_t__ i386_ScreenPosX ;
 int i386_ScreenPosY ;

__attribute__((used)) static void
i386PrintText(char *pszText)
{
    char chr;
    while (1)
    {
        chr = *pszText++;

        if (chr == 0) break;
        if (chr == '\n')
        {
            i386_ScreenPosY++;
            i386_ScreenPosX = 0;
            continue;
        }

        MachVideoPutChar(chr, SCREEN_ATTR, i386_ScreenPosX, i386_ScreenPosY);
        i386_ScreenPosX++;
    }
}
