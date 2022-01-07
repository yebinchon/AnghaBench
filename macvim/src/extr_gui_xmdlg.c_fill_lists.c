
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum ListSpecifier { ____Placeholder_ListSpecifier } ListSpecifier ;
typedef int XtPointer ;
typedef int XtCallbackProc ;
typedef int XmString ;
typedef scalar_t__* WidgetList ;
typedef scalar_t__ Widget ;
struct TYPE_5__ {int num; char** sel; scalar_t__* list; int encoding_menu; int encoding_pulldown; int in_pixels; } ;
typedef TYPE_1__ SharedFontSelData ;
typedef scalar_t__ Cardinal ;


 int ENCODING ;
 int False ;
 int MAX_ENTRIES_IN_LIST ;

 int NONE ;


 int TEMP_BUF_SIZE ;
 int XmListAddItems (scalar_t__,int *,int,int) ;
 int XmListDeleteAllItems (scalar_t__) ;
 int XmListSelectItem (scalar_t__,int ,int ) ;
 int XmListSetBottomItem (scalar_t__,int ) ;
 int XmNactivateCallback ;
 int XmNchildren ;
 int XmNlabelString ;
 int XmNmenuHistory ;
 int XmNnumChildren ;
 int XmNuserData ;
 int XmStringCreateLocalized (char*) ;
 int XmStringFree (int ) ;
 int XtAddCallback (scalar_t__,int ,int ,int ) ;
 int XtDestroyWidget (scalar_t__) ;
 int XtFree (char*) ;
 int XtManageChild (scalar_t__) ;
 int XtUnmanageChild (scalar_t__) ;
 scalar_t__ XtVaCreateManagedWidget (char*,int ,int ,int ,int ,int ,int,int *) ;
 int XtVaGetValues (int ,int ,scalar_t__**,int ,scalar_t__*,int *) ;
 int XtVaSetValues (int ,int ,scalar_t__,int *,...) ;
 int add_to_list (char**,char*,int*) ;
 scalar_t__ encoding_callback ;
 int encoding_part (int ,char*) ;
 int fn (TYPE_1__*,int) ;
 scalar_t__ match (TYPE_1__*,int,int) ;
 int name_part (int ,char*) ;
 scalar_t__ proportional (int ) ;
 int size_part (int ,char*,int ) ;
 int strcmp (char*,char*) ;
 int style_part (int ,char*) ;
 char* wild ;
 int xmPushButtonGadgetClass ;

__attribute__((used)) static void
fill_lists(enum ListSpecifier fix, SharedFontSelData *data)
{
    char *list[NONE][MAX_ENTRIES_IN_LIST];
    int count[NONE];
    char buf[TEMP_BUF_SIZE];
    XmString items[MAX_ENTRIES_IN_LIST];
    int i;
    int idx;

    for (idx = (int)ENCODING; idx < (int)NONE; ++idx)
 count[idx] = 0;


    if (fix != ENCODING)
 add_to_list(list[ENCODING], wild, &count[ENCODING]);
    if (fix != 130)
 add_to_list(list[130], wild, &count[130]);
    if (fix != 128)
 add_to_list(list[128], wild, &count[128]);
    if (fix != 129)
 add_to_list(list[129], wild, &count[129]);

    for (i = 0; i < data->num && i < MAX_ENTRIES_IN_LIST; i++)
    {
 if (proportional(fn(data, i)))
     continue;

 if (fix != ENCODING
  && match(data, 130, i)
  && match(data, 128, i)
  && match(data, 129, i))
 {
     encoding_part(fn(data, i), buf);
     add_to_list(list[ENCODING], buf, &count[ENCODING]);
 }

 if (fix != 130
  && match(data, ENCODING, i)
  && match(data, 128, i)
  && match(data, 129, i))
 {
     name_part(fn(data, i), buf);
     add_to_list(list[130], buf, &count[130]);
 }

 if (fix != 128
  && match(data, ENCODING, i)
  && match(data, 130, i)
  && match(data, 129, i))
 {
     style_part(fn(data, i), buf);
     add_to_list(list[128], buf, &count[128]);
 }

 if (fix != 129
  && match(data, ENCODING, i)
  && match(data, 130, i)
  && match(data, 128, i))
 {
     size_part(fn(data, i), buf, data->in_pixels);
     add_to_list(list[129], buf, &count[129]);
 }
    }





    if (fix != ENCODING)
    {
 Cardinal n_items;
 WidgetList children;
 Widget selected_button = 0;


 XtVaGetValues(data->encoding_pulldown,
  XmNchildren, &children,
  XmNnumChildren, &n_items,
  ((void*)0));

 for (i = 0; i < count[ENCODING]; ++i)
 {
     Widget button;

     items[i] = XmStringCreateLocalized(list[ENCODING][i]);

     if (i < (int)n_items)
     {

  XtVaSetValues(children[i],
   XmNlabelString, items[i],
   XmNuserData, i,
   ((void*)0));
  button = children[i];
     }
     else
     {

  button = XtVaCreateManagedWidget("button",
   xmPushButtonGadgetClass,
   data->encoding_pulldown,
   XmNlabelString, items[i],
   XmNuserData, i,
   ((void*)0));
  XtAddCallback(button, XmNactivateCallback,
   (XtCallbackProc) encoding_callback, (XtPointer) data);
  XtManageChild(button);
     }

     if (data->sel[ENCODING])
     {
  if (!strcmp(data->sel[ENCODING], list[ENCODING][i]))
      selected_button = button;
     }
     XtFree(list[ENCODING][i]);
 }



 for (i = count[ENCODING]; i < (int)n_items; ++i)
 {
     XtUnmanageChild(children[i]);
     XtDestroyWidget(children[i]);
 }



 if (selected_button)
 {
     XtVaSetValues(data->encoding_menu,
      XmNmenuHistory, selected_button,
      ((void*)0));
 }

 for (i = 0; i < count[ENCODING]; ++i)
     XmStringFree(items[i]);
    }




    for (idx = (int)130; idx < (int)NONE; ++idx)
    {
 Widget w;

 if (fix == (enum ListSpecifier)idx)
     continue;

 switch ((enum ListSpecifier)idx)
 {
     case 130:
  w = data->list[130];
  break;
     case 128:
  w = data->list[128];
  break;
     case 129:
  w = data->list[129];
  break;
     default:
  w = (Widget)0;
 }

 for (i = 0; i < count[idx]; ++i)
 {
     items[i] = XmStringCreateLocalized(list[idx][i]);
     XtFree(list[idx][i]);
 }
 XmListDeleteAllItems(w);
 XmListAddItems(w, items, count[idx], 1);
 if (data->sel[idx])
 {
     XmStringFree(items[0]);
     items[0] = XmStringCreateLocalized(data->sel[idx]);
     XmListSelectItem(w, items[0], False);
     XmListSetBottomItem(w, items[0]);
 }
 for (i = 0; i < count[idx]; ++i)
     XmStringFree(items[i]);
    }
}
