
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * WidgetList ;
typedef int Widget ;
typedef char KeySym ;
typedef int Boolean ;


 int False ;
 int GrabModeAsync ;
 int Mod1Mask ;
 int True ;
 int XKeysymToKeycode (int ,int ) ;
 int XStringToKeysym (char*) ;
 int XmNchildren ;
 int XmNmnemonic ;
 int XmNnumChildren ;
 int XmNrowColumnType ;
 scalar_t__ XmWORK_AREA ;
 scalar_t__ XtClass (int ) ;
 int XtDisplay (int ) ;
 int XtGrabKey (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ XtIsComposite (int ) ;
 int XtVaGetValues (int ,int ,...) ;
 scalar_t__ xmRowColumnWidgetClass ;

__attribute__((used)) static void
add_mnemonic_grabs(Widget dialog, Widget w)
{
    char mneString[2];
    WidgetList children;
    int numChildren, i;
    Boolean isMenu;
    KeySym mnemonic = '\0';
    unsigned char rowColType;

    if (XtIsComposite(w))
    {
 if (XtClass(w) == xmRowColumnWidgetClass)
 {
     XtVaGetValues(w, XmNrowColumnType, &rowColType, ((void*)0));
     isMenu = (rowColType != (unsigned char)XmWORK_AREA);
 }
 else
     isMenu = False;
 if (!isMenu)
 {
     XtVaGetValues(w, XmNchildren, &children, XmNnumChildren,
         &numChildren, ((void*)0));
     for (i = 0; i < numChildren; i++)
  add_mnemonic_grabs(dialog, children[i]);
 }
    }
    else
    {
 XtVaGetValues(w, XmNmnemonic, &mnemonic, ((void*)0));
 if (mnemonic != '\0')
 {
     mneString[0] = mnemonic;
     mneString[1] = '\0';
     XtGrabKey(dialog, XKeysymToKeycode(XtDisplay(dialog),
        XStringToKeysym(mneString)),
      Mod1Mask, True, GrabModeAsync, GrabModeAsync);
 }
    }
}
