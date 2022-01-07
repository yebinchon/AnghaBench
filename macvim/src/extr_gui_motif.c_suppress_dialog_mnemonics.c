
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XtPointer ;
typedef int XtEventHandler ;
typedef int Widget ;


 int AnyKey ;
 int False ;
 int KeyPressMask ;
 int Mod1Mask ;
 int XtRemoveEventHandler (int ,int ,int ,int ,int ) ;
 int XtUngrabKey (int ,int ,int ) ;
 scalar_t__ mnemonic_event ;

__attribute__((used)) static void
suppress_dialog_mnemonics(Widget dialog)
{
    if (!dialog)
 return;

    XtUngrabKey(dialog, AnyKey, Mod1Mask);
    XtRemoveEventHandler(dialog, KeyPressMask, False,
      (XtEventHandler) mnemonic_event, (XtPointer) ((void*)0));
}
