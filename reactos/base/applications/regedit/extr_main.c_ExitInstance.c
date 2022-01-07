
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINSTANCE ;


 int DestroyMenu (int ) ;
 int UnloadAclUiDll () ;
 int UnregisterHexEditorClass (int ) ;
 int hPopupMenus ;

void ExitInstance(HINSTANCE hInstance)
{
    UnregisterHexEditorClass(hInstance);

    DestroyMenu(hPopupMenus);
    UnloadAclUiDll();
}
