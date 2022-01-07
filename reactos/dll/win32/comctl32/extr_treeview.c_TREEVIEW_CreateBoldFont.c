
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int font ;
struct TYPE_4__ {int lfWeight; } ;
typedef TYPE_1__ LOGFONTW ;
typedef int HFONT ;


 int CreateFontIndirectW (TYPE_1__*) ;
 int FW_BOLD ;
 int GetObjectW (int ,int,TYPE_1__*) ;

__attribute__((used)) static HFONT
TREEVIEW_CreateBoldFont(HFONT hOrigFont)
{
    LOGFONTW font;

    GetObjectW(hOrigFont, sizeof(font), &font);
    font.lfWeight = FW_BOLD;
    return CreateFontIndirectW(&font);
}
