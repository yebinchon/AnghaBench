
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCTSTR ;


 int MainUsage () ;
 int ScControl (char*,char*,char**,int) ;

int _tmain(int argc, LPCTSTR argv[])
{
    LPCTSTR Server = ((void*)0);
    LPCTSTR Command = ((void*)0);
    LPCTSTR *Args = ((void*)0);

    if (argc < 2)
    {
        MainUsage();
        return -1;
    }


    if ((argv[1][0] == '\\') && (argv[1][1] == '\\'))
    {
        if (argc < 3)
        {
            MainUsage();
            return -1;
        }

        Server = argv[1];
        Command = argv[2];
        if (argc > 3)
            Args = &argv[3];

        return ScControl(Server,
                         Command,
                         Args,
                         argc-3);
    }
    else
    {
        Command = argv[1];
        if (argc > 2)
            Args = &argv[2];

        return ScControl(Server,
                         Command,
                         Args,
                         argc-2);
    }
}
