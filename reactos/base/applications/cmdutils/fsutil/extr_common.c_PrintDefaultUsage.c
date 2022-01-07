
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* Desc; int const* Command; } ;
typedef int TCHAR ;
typedef TYPE_1__ HandlerItem ;


 int _T (char*) ;
 int _ftprintf (int ,int ,int const*,...) ;
 int stderr ;

void PrintDefaultUsage(const TCHAR * Command,
                       const TCHAR * SubCommand,
                       HandlerItem * HandlersList,
                       int HandlerListCount)
{
    int i;


    if (SubCommand != ((void*)0))
    {
        _ftprintf(stderr, _T("Unhandled%scommand: %s\n"), Command, SubCommand);
    }


    _ftprintf(stderr, _T("---- Handled%scommands ----\n\n"), Command);
    for (i = 0; i < HandlerListCount; ++i)
    {
        _ftprintf(stderr, _T("%s\t%s\n"), HandlersList[i].Command, HandlersList[i].Desc);
    }
}
