
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XmString ;
typedef int * XmFontList ;
typedef int XFontStruct ;
struct TYPE_2__ {scalar_t__ norm_font; } ;
typedef scalar_t__ Dimension ;


 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int XmFontListFree (int *) ;
 int XmStringCreateLocalized (char*) ;
 int XmStringExtent (int *,int ,scalar_t__*,scalar_t__*) ;
 int XmStringFree (int ) ;
 TYPE_1__ gui ;
 int * gui_motif_create_fontlist (int *) ;
 int wstrace (char*) ;

int
workshop_get_font_height()
{
    XmFontList fontList;
    XmString str;
    Dimension w;
    Dimension h;







    fontList = gui_motif_create_fontlist((XFontStruct *)gui.norm_font);
    h = 0;
    if (fontList != ((void*)0))
    {
 str = XmStringCreateLocalized("A");
 XmStringExtent(fontList, str, &w, &h);
 XmStringFree(str);
 XmFontListFree(fontList);
    }

    return (int)h;
}
