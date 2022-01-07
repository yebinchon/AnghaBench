
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* Handler ) (int,int const**) ;int Command; } ;
typedef int TCHAR ;
typedef TYPE_1__ HandlerItem ;


 scalar_t__ _tcsicmp (int const*,int ) ;
 int stub1 (int,int const**) ;

int FindHandler(int argc,
                const TCHAR *argv[],
                HandlerItem * HandlersList,
                int HandlerListCount,
                void (*UsageHelper)(const TCHAR *))
{
    int i;
    int ret;
    const TCHAR * Command;

    ret = 1;
    Command = ((void*)0);
    i = HandlerListCount;


    if (argc > 1)
    {

        Command = argv[1];
        for (i = 0; i < HandlerListCount; ++i)
        {
            if (_tcsicmp(Command, HandlersList[i].Command) == 0)
            {
                ret = HandlersList[i].Handler(argc - 1, &argv[1]);
                break;
            }
        }
    }


    if (i == HandlerListCount)
    {
        UsageHelper(Command);
    }

    return ret;
}
