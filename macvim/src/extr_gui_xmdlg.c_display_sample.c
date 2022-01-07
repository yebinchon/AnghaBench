
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XmString ;
typedef int XmFontList ;
typedef int XFontStruct ;
struct TYPE_3__ {int old_list; int * old; int sample; int font_name; int dialog; } ;
typedef TYPE_1__ SharedFontSelData ;
typedef int Display ;
typedef int Arg ;


 int XFreeFont (int *,int *) ;
 int * XLoadQueryFont (int *,int ) ;
 int XmFontListFree (int ) ;
 int XmNfontList ;
 int XmNlabelString ;
 int XmStringCreateLocalized (char*) ;
 int XmStringFree (int ) ;
 int * XtDisplay (int ) ;
 int XtSetArg (int ,int ,int ) ;
 int XtSetValues (int ,int *,int) ;
 int gui_motif_create_fontlist (int *) ;

__attribute__((used)) static void
display_sample(SharedFontSelData *data)
{
    Arg args[2];
    int n;
    XFontStruct * font;
    XmFontList font_list;
    Display * display;
    XmString str;

    display = XtDisplay(data->dialog);
    font = XLoadQueryFont(display, data->font_name);
    font_list = gui_motif_create_fontlist(font);

    n = 0;
    str = XmStringCreateLocalized("AaBbZzYy 0123456789");
    XtSetArg(args[n], XmNlabelString, str); n++;
    XtSetArg(args[n], XmNfontList, font_list); n++;

    XtSetValues(data->sample, args, n);
    XmStringFree(str);

    if (data->old)
    {
 XFreeFont(display, data->old);
 XmFontListFree(data->old_list);
    }
    data->old = font;
    data->old_list = font_list;
}
