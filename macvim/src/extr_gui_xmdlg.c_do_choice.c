
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum ListSpecifier { ____Placeholder_ListSpecifier } ListSpecifier ;
typedef int char_u ;
typedef int XmString ;
struct TYPE_9__ {int item; } ;
typedef TYPE_1__ XmListCallbackStruct ;
typedef scalar_t__ Widget ;
struct TYPE_10__ {char** sel; char* font_name; int num; int name; int sample; } ;
typedef TYPE_2__ SharedFontSelData ;
typedef int Boolean ;
typedef int Arg ;


 size_t ENCODING ;
 int FALSE ;
 int False ;
 size_t NAME ;
 size_t SIZE ;
 size_t STYLE ;
 int True ;
 int VIM_ERROR ;
 int XmListDeselectItem (scalar_t__,int ) ;
 int XmNlabelString ;
 int XmSTRING_DEFAULT_CHARSET ;
 int XmStringCreateLocalized (char*) ;
 int XmStringFree (int ) ;
 int XmStringGetLtoR (int ,int ,char**) ;
 int XmTextSetString (int ,char*) ;
 int XtFree (char*) ;
 void* XtNewString (char*) ;
 int XtSetArg (int ,int ,int ) ;
 int XtSetValues (int ,int *,int) ;
 char* _ (char*) ;
 int apply_fontlist (int ) ;
 int display_sample (TYPE_2__*) ;
 int do_dialog (int ,int *,int *,int *,int,int *,int ) ;
 int fill_lists (int,TYPE_2__*) ;
 char* fn (TYPE_2__*,int) ;
 scalar_t__ match (TYPE_2__*,size_t,int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* wild ;

__attribute__((used)) static Boolean
do_choice(Widget w,
 SharedFontSelData *data,
 XmListCallbackStruct *call_data,
 enum ListSpecifier which)
{
    char *sel;

    XmStringGetLtoR(call_data->item, XmSTRING_DEFAULT_CHARSET, &sel);

    if (!data->sel[which])
 data->sel[which] = XtNewString(sel);
    else
    {
 if (!strcmp(data->sel[which], sel))
 {

     XtFree(data->sel[which]);
     data->sel[which] = ((void*)0);
     if (w)
  XmListDeselectItem(w, call_data->item);
 }
 else
 {
     XtFree(data->sel[which]);
     data->sel[which] = XtNewString(sel);
 }
    }
    XtFree(sel);

    fill_lists(which, data);


    if (data->sel[ENCODING]
     && data->sel[NAME]
     && data->sel[STYLE]
     && data->sel[SIZE]
     && strcmp(data->sel[ENCODING], wild)
     && strcmp(data->sel[NAME], wild)
     && strcmp(data->sel[STYLE], wild)
     && strcmp(data->sel[SIZE], wild))
    {
 int i;

 if (data->font_name)
     XtFree(data->font_name);
 data->font_name = ((void*)0);

 for (i = 0; i < data->num; i++)
 {
     if (match(data, ENCODING, i)
      && match(data, NAME, i)
      && match(data, STYLE, i)
      && match(data, SIZE, i))
     {
  data->font_name = XtNewString(fn(data, i));
  break;
     }
 }

 if (data->font_name)
 {
     XmTextSetString(data->name, data->font_name);
     display_sample(data);
 }
 else
     do_dialog(VIM_ERROR,
      (char_u *)_("Error"),
      (char_u *)_("Invalid font specification"),
      (char_u *)_("&Dismiss"), 1, ((void*)0), FALSE);

 return True;
    }
    else
    {
 int n;
 XmString str;
 Arg args[4];
 char *nomatch_msg = _("no specific match");

 n = 0;
 str = XmStringCreateLocalized(nomatch_msg);
 XtSetArg(args[n], XmNlabelString, str); ++n;
 XtSetValues(data->sample, args, n);
 apply_fontlist(data->sample);
 XmTextSetString(data->name, nomatch_msg);
 XmStringFree(str);

 return False;
    }
}
