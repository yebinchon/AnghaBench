
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
 int DIALOG_EditCopy () ;
 int DIALOG_EditCut () ;
 int DIALOG_EditDelete () ;
 int DIALOG_EditPaste () ;
 int DIALOG_EditSelectAll () ;
 int DIALOG_EditTimeDate () ;
 int DIALOG_EditUndo () ;
 int DIALOG_EditWrap () ;
 int DIALOG_FileExit () ;
 int DIALOG_FileNew () ;
 int DIALOG_FileOpen () ;
 int DIALOG_FilePageSetup () ;
 int DIALOG_FilePrint () ;
 int DIALOG_FileSave () ;
 int DIALOG_FileSaveAs () ;
 int DIALOG_GoTo () ;
 int DIALOG_HelpAboutNotepad () ;
 int DIALOG_HelpContents () ;
 int DIALOG_Replace () ;
 int DIALOG_Search () ;
 int DIALOG_SearchNext () ;
 int DIALOG_SelectFont () ;
 int DIALOG_ViewStatusBar () ;

__attribute__((used)) static int NOTEPAD_MenuCommand(WPARAM wParam)
{
    switch (wParam)
    {
    case 142: DIALOG_FileNew(); break;
    case 141: DIALOG_FileOpen(); break;
    case 136: DIALOG_FileSave(); break;
    case 135: DIALOG_FileSaveAs(); break;
    case 138: DIALOG_FilePrint(); break;
    case 140: DIALOG_FilePageSetup(); break;
    case 147: DIALOG_FileExit(); break;

    case 129: DIALOG_EditUndo(); break;
    case 149: DIALOG_EditCut(); break;
    case 150: DIALOG_EditCopy(); break;
    case 139: DIALOG_EditPaste(); break;
    case 148: DIALOG_EditDelete(); break;
    case 132: DIALOG_EditSelectAll(); break;
    case 130: DIALOG_EditTimeDate(); break;

    case 134: DIALOG_Search(); break;
    case 133: DIALOG_SearchNext(); break;
    case 137: DIALOG_Replace(); break;
    case 145: DIALOG_GoTo(); break;

    case 128: DIALOG_EditWrap(); break;
    case 146: DIALOG_SelectFont(); break;

    case 131: DIALOG_ViewStatusBar(); break;

    case 143: DIALOG_HelpContents(); break;
    case 144: DIALOG_HelpAboutNotepad(); break;

    default:
        break;
    }
    return 0;
}
