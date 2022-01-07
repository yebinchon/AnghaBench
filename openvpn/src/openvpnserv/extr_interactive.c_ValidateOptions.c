
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int ovpn_admin_group; } ;
typedef int HANDLE ;
typedef int BOOL ;


 int CheckOption (char const*,int,char**,TYPE_1__*) ;
 char** CommandLineToArgvW (char const*,int*) ;
 int ERROR_STARTUP_DATA ;
 int FALSE ;
 int IsOption (char*) ;
 int LocalFree (char**) ;
 int ReturnError (int ,int ,char*,int,int *) ;
 int ReturnLastError (int ,char*) ;
 int TRUE ;
 int _countof (char*) ;
 int exit_event ;
 int openvpn_swprintf (char*,int ,char const*,char*,char const*,...) ;
 TYPE_1__ settings ;
 scalar_t__ wcscmp (char*,char*) ;

__attribute__((used)) static BOOL
ValidateOptions(HANDLE pipe, const WCHAR *workdir, const WCHAR *options)
{
    WCHAR **argv;
    int argc;
    WCHAR buf[256];
    BOOL ret = FALSE;
    int i;
    const WCHAR *msg1 = L"You have specified a config file location (%s relative to %s)"
                        L" that requires admin approval. This error may be avoided"
                        L" by adding your account to the \"%s\" group";

    const WCHAR *msg2 = L"You have specified an option (%s) that may be used"
                        L" only with admin approval. This error may be avoided"
                        L" by adding your account to the \"%s\" group";

    argv = CommandLineToArgvW(options, &argc);

    if (!argv)
    {
        ReturnLastError(pipe, L"CommandLineToArgvW");
        ReturnError(pipe, ERROR_STARTUP_DATA, L"Cannot validate options", 1, &exit_event);
        goto out;
    }


    if (argc < 1)
    {
        ret = TRUE;
        goto out;
    }




    if (argc == 1)
    {
        WCHAR *argv_tmp[2] = { L"--config", argv[0] };

        if (!CheckOption(workdir, 2, argv_tmp, &settings))
        {
            openvpn_swprintf(buf, _countof(buf), msg1, argv[0], workdir,
                             settings.ovpn_admin_group);
            ReturnError(pipe, ERROR_STARTUP_DATA, buf, 1, &exit_event);
        }
        goto out;
    }

    for (i = 0; i < argc; ++i)
    {
        if (!IsOption(argv[i]))
        {
            continue;
        }

        if (!CheckOption(workdir, argc-i, &argv[i], &settings))
        {
            if (wcscmp(L"--config", argv[i]) == 0 && argc-i > 1)
            {
                openvpn_swprintf(buf, _countof(buf), msg1, argv[i+1], workdir,
                                 settings.ovpn_admin_group);
                ReturnError(pipe, ERROR_STARTUP_DATA, buf, 1, &exit_event);
            }
            else
            {
                openvpn_swprintf(buf, _countof(buf), msg2, argv[i],
                                 settings.ovpn_admin_group);
                ReturnError(pipe, ERROR_STARTUP_DATA, buf, 1, &exit_event);
            }
            goto out;
        }
    }


    ret = TRUE;

out:
    if (argv)
    {
        LocalFree(argv);
    }
    return ret;
}
