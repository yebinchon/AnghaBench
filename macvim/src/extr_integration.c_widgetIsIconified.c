
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;
typedef int Widget ;
typedef int Boolean ;
typedef int Atom ;


 int AnyPropertyType ;
 int False ;
 int IconicState ;
 int NOCATGETS (char*) ;
 int True ;
 int XGetWindowProperty (int ,scalar_t__,int ,long,long,int ,int ,int *,int*,int*,int*,int **) ;
 int XmInternAtom (int ,int ,int ) ;
 int XtDisplay (int ) ;
 scalar_t__ XtWindow (int ) ;

__attribute__((used)) static Boolean
widgetIsIconified(
 Widget w)
{
 Atom wm_state;
 Atom act_type;
 int act_fmt;
 u_long nitems_ret;
 u_long bytes_after;
 u_long *property;






 wm_state = XmInternAtom(XtDisplay(w), NOCATGETS("WM_STATE"), False);
 if (XtWindow(w) != 0) {
  XGetWindowProperty(XtDisplay(w), XtWindow(w), wm_state, 0L, 2L,
      False, AnyPropertyType, &act_type, &act_fmt, &nitems_ret,
      &bytes_after, (u_char **) &property);
  if (nitems_ret == 2 && property[0] == IconicState) {
   return True;
  }
 }

 return False;

}
