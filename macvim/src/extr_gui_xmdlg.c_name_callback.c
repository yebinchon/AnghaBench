
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmListCallbackStruct ;
typedef int Widget ;
typedef int SharedFontSelData ;


 int NAME ;
 int do_choice (int ,int *,int *,int ) ;

__attribute__((used)) static void
name_callback(Widget w,
 SharedFontSelData *data,
 XmListCallbackStruct *call_data)
{
    do_choice(w, data, call_data, NAME);
}
