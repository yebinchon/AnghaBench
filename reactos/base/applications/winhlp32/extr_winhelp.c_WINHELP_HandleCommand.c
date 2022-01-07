
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ofsFilename; int command; int data; int size; } ;
typedef TYPE_1__ WINHELP ;
struct TYPE_4__ {int dwData; TYPE_1__* lpData; } ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef TYPE_2__ COPYDATASTRUCT ;
 int MACRO_Exit () ;
 int MACRO_HelpOn () ;
 int MACRO_JumpContents (char*,char*) ;
 int MACRO_JumpContext (char*,char*,int ) ;
 int MACRO_JumpHash (char*,char*,int ) ;
 int MACRO_PopupContext (char*,int ) ;
 int MACRO_SetContents (char*,int ) ;
 int WINE_FIXME (char*,...) ;
 int WINE_TRACE (char*,int ,int,int ,int ) ;
 int WINHELP_HasWorkingWindow () ;
 int debugstr_a (char*) ;

__attribute__((used)) static LRESULT WINHELP_HandleCommand(HWND hSrcWnd, LPARAM lParam)
{
    COPYDATASTRUCT* cds = (COPYDATASTRUCT*)lParam;
    WINHELP* wh;

    if (cds->dwData != 0xA1DE505)
    {
        WINE_FIXME("Wrong magic number (%08lx)\n", cds->dwData);
        return 0;
    }

    wh = cds->lpData;

    if (wh)
    {
        char* ptr = (wh->ofsFilename) ? (LPSTR)wh + wh->ofsFilename : ((void*)0);

        WINE_TRACE("Got[%u]: cmd=%u data=%08x fn=%s\n",
                   wh->size, wh->command, wh->data, debugstr_a(ptr));
        switch (wh->command)
        {
        case 133:
            if (ptr)
            {
                MACRO_JumpContext(ptr, "main", wh->data);
            }
            if (!WINHELP_HasWorkingWindow()) MACRO_Exit();
            break;
        case 129:
            MACRO_Exit();
            break;
        case 134:
            if (ptr)
            {
                MACRO_JumpContents(ptr, "main");
            }
            if (!WINHELP_HasWorkingWindow()) MACRO_Exit();
            break;
        case 130:
            MACRO_HelpOn();
            if (!WINHELP_HasWorkingWindow()) MACRO_Exit();
            break;

        case 128:
            if (ptr)
            {
                MACRO_SetContents(ptr, wh->data);
            }
            break;
        case 132:
            if (ptr)
            {
                MACRO_PopupContext(ptr, wh->data);
            }
            break;


        case 131:

            WINE_FIXME("HELP_FINDER: stub\n");
            if (ptr)
            {
                MACRO_JumpHash(ptr, "main", 0);
            }
            break;







        default:
            WINE_FIXME("Unhandled command (%x) for remote winhelp control\n", wh->command);
            break;
        }
    }

    return 1;
}
