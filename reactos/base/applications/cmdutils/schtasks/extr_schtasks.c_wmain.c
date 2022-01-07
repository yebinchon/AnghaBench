
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int FIXME (char*,...) ;
 int TRACE (char*,...) ;
 int change_command (int,int **) ;
 int change_optW ;
 int create_command (int,int **) ;
 int create_optW ;
 int debugstr_w (int *) ;
 int delete_command (int,int **) ;
 int delete_optW ;
 int strcmpiW (int *,int ) ;
 int wine_dbgstr_w (int *) ;

int wmain(int argc, WCHAR *argv[])
{
    int i, ret = 0;

    for (i = 0; i < argc; i++)
        TRACE(" %s", wine_dbgstr_w(argv[i]));
    TRACE("\n");

    CoInitialize(((void*)0));

    if (argc < 2)
        FIXME("Print current tasks state\n");
    else if (!strcmpiW(argv[1], change_optW))
        ret = change_command(argc - 2, argv + 2);
    else if (!strcmpiW(argv[1], create_optW))
        ret = create_command(argc - 2, argv + 2);
    else if (!strcmpiW(argv[1], delete_optW))
        ret = delete_command(argc - 2, argv + 2);
    else
        FIXME("Unsupported command %s\n", debugstr_w(argv[1]));

    CoUninitialize();
    return ret;
}
