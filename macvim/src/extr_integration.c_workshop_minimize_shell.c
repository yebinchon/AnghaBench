
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Widget ;


 scalar_t__ True ;
 int XIconifyWindow (int ,int ,int ) ;
 int XScreenNumberOfScreen (int ) ;
 int XmNiconic ;
 int XtDisplay (int *) ;
 scalar_t__ XtIsObject (int *) ;
 scalar_t__ XtIsRealized (int *) ;
 int XtScreen (int *) ;
 int XtVaSetValues (int *,int ,scalar_t__,int *) ;
 int XtWindow (int *) ;
 scalar_t__ isMapped (int *) ;

void
workshop_minimize_shell(Widget shell)
{
 if (shell != ((void*)0) &&
     XtIsObject(shell) &&
     XtIsRealized(shell) == True) {
  if (isMapped(shell) == True) {
   XIconifyWindow(XtDisplay(shell), XtWindow(shell),
          XScreenNumberOfScreen(XtScreen(shell)));
  }
  XtVaSetValues(shell,
         XmNiconic, True,
         ((void*)0));
 }
}
