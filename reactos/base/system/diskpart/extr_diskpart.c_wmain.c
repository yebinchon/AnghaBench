
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;


 int ARRAYSIZE (int *) ;
 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ,char* const) ;
 int ConResPuts (int ,int ) ;
 int CreatePartitionList () ;
 int DestroyPartitionList () ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ FALSE ;
 int GetModuleHandle (int *) ;
 int IDS_APP_HEADER ;
 int IDS_APP_LEAVING ;
 int IDS_APP_USAGE ;
 int IDS_ERROR_MSG_BAD_ARG ;
 int IDS_ERROR_MSG_NO_SCRIPT ;
 int InterpretMain () ;
 int K32LoadStringW (int ,int ,int *,int ) ;
 scalar_t__ RunScript (char*) ;
 int SetConsoleTitleW (int *) ;
 int ShowHeader () ;
 int Sleep (int) ;
 int StdErr ;
 int StdOut ;
 scalar_t__ _wcsicmp (char*,char*) ;
 int _wtoi (char* const) ;

int wmain(int argc, const LPWSTR argv[])
{
    LPCWSTR script = ((void*)0);
    LPCWSTR tmpBuffer = ((void*)0);
    WCHAR appTitle[50];
    int index, timeout;
    int result = EXIT_SUCCESS;


    ConInitStdStreams();




    K32LoadStringW(GetModuleHandle(((void*)0)), IDS_APP_HEADER, appTitle, ARRAYSIZE(appTitle));
    SetConsoleTitleW(appTitle);



    timeout = 0;

    CreatePartitionList();


    if (argc < 2)
    {
        ShowHeader();
        InterpretMain();
    }

    else
    {
        for (index = 1; index < argc; index++)
        {

            if ((argv[index][0] == '/')||
                (argv[index][0] == '-'))
            {
                tmpBuffer = argv[index] + 1;
            }
            else
            {

                ConResPrintf(StdErr, IDS_ERROR_MSG_BAD_ARG, argv[index]);
                result = EXIT_FAILURE;
                goto done;
            }



            if (_wcsicmp(tmpBuffer, L"?") == 0)
            {
                ConResPuts(StdOut, IDS_APP_USAGE);
                result = EXIT_SUCCESS;
                goto done;
            }

            else if (_wcsicmp(tmpBuffer, L"s") == 0)
            {
                if ((index + 1) < argc)
                {
                    index++;
                    script = argv[index];
                }
            }

            else if (_wcsicmp(tmpBuffer, L"t") == 0)
            {
                if ((index + 1) < argc)
                {
                    index++;
                    timeout = _wtoi(argv[index]);



                    if (timeout < 0)
                        timeout = 0;
                }
            }
            else
            {

                ConResPrintf(StdErr, IDS_ERROR_MSG_BAD_ARG, tmpBuffer);
                result = EXIT_FAILURE;
                goto done;
            }
        }


        ShowHeader();


        if (script != ((void*)0))
        {


            if (timeout > 0)
                Sleep(timeout * 1000);

            if (RunScript(script) == FALSE)
            {
                result = EXIT_FAILURE;
                goto done;
            }
        }
        else
        {

            ConResPrintf(StdErr, IDS_ERROR_MSG_NO_SCRIPT, script);
            result = EXIT_FAILURE;
            goto done;
        }
    }


    ConResPuts(StdOut, IDS_APP_LEAVING);

done:
    DestroyPartitionList();

    return result;
}
