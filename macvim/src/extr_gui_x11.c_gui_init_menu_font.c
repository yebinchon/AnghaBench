
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* XtPointer ;
struct TYPE_5__ {char* addr; int size; } ;
typedef TYPE_1__ XrmValue ;
struct TYPE_6__ {int menu_font; scalar_t__ rsrc_menu_font_name; int menu_fontset; } ;
typedef int GuiFontset ;
typedef int GuiFont ;


 scalar_t__ False ;
 scalar_t__ XtConvertAndStore (int ,int ,TYPE_1__*,int ,TYPE_1__*) ;
 int XtRFontSet ;
 int XtRFontStruct ;
 int XtRString ;
 TYPE_2__ gui ;
 void* strlen (char*) ;
 int vimShell ;

void
gui_init_menu_font()
{
    XrmValue from, to;
    from.addr = (char *)gui.rsrc_menu_font_name;
    from.size = strlen(from.addr);
    to.addr = (XtPointer)&gui.menu_font;
    to.size = sizeof(GuiFont);

    if (XtConvertAndStore(vimShell, XtRString, &from, XtRFontStruct, &to) == False)
    {

    }

}
