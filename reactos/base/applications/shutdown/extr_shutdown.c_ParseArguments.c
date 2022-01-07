
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandLineOptions {int shutdown_delay; int* remote_system; int* message; void* force; void* shutdown; void* restart; void* logoff; void* show_gui; void* hibernate; void* document_reason; void* reason; void* abort; } ;
typedef int WCHAR ;
typedef int DWORD ;


 int ConResPuts (int ,int ) ;
 int ERROR_BAD_LENGTH ;
 int ERROR_INVALID_DATA ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 void* FALSE ;
 int IDS_ERROR_MAX_COMMENT_LENGTH ;
 int IDS_USAGE ;
 void* ParseReasonCode (int*) ;
 int StdErr ;
 int StdOut ;
 void* TRUE ;
 int _wtoi (int*) ;
 int towlower (int) ;
 int wcslen (int*) ;

__attribute__((used)) static DWORD
ParseArguments(struct CommandLineOptions* pOpts, int argc, WCHAR *argv[])
{
    int index;

    if (!pOpts)
        return ERROR_INVALID_PARAMETER;


    pOpts->abort = FALSE;
    pOpts->force = FALSE;
    pOpts->logoff = FALSE;
    pOpts->restart = FALSE;
    pOpts->shutdown = FALSE;
    pOpts->document_reason = FALSE;
    pOpts->hibernate = FALSE;
    pOpts->shutdown_delay = 30;
    pOpts->remote_system = ((void*)0);
    pOpts->reason = ParseReasonCode(((void*)0));
    pOpts->message = ((void*)0);
    pOpts->show_gui = FALSE;





    for (index = 1; index < argc; index++)
    {
        if (argv[index][0] == L'-' || argv[index][0] == L'/')
        {
            switch (towlower(argv[index][1]))
            {
                case L'?':
                    ConResPuts(StdOut, IDS_USAGE);
                    return ERROR_SUCCESS;

                case L'a':
                    pOpts->abort = TRUE;
                    break;

                case L'c':
                    if (index+1 >= argc)
                        return ERROR_INVALID_DATA;
                    if (!argv[index+1] || wcslen(argv[index+1]) <= 512)
                    {
                        pOpts->message = argv[index+1];
                        index++;
                    }
                    else
                    {
                        ConResPuts(StdErr, IDS_ERROR_MAX_COMMENT_LENGTH);
                        return ERROR_BAD_LENGTH;
                    }
                    break;

                case L'd':
                    if (index+1 >= argc)
                        return ERROR_INVALID_DATA;
                    pOpts->reason = ParseReasonCode(argv[index+1]);
                    index++;
                    break;

                case L'e':

                    pOpts->document_reason = TRUE;
                    break;

                case L'f':
                    pOpts->force = TRUE;
                    break;

                case L'h':
                    pOpts->hibernate = TRUE;
                    break;

                case L'i':
                    pOpts->show_gui = TRUE;
                    break;

                case L'l':
                    pOpts->logoff = TRUE;
                    break;

                case L'm':
                    if (index+1 >= argc)
                        return ERROR_INVALID_DATA;
                    pOpts->remote_system = argv[index+1];
                    index++;
                    break;

                case L'p':
                    pOpts->force = TRUE;
                    pOpts->shutdown_delay = 0;
                    break;

                case L'r':
                    pOpts->restart = TRUE;
                    break;

                case L's':
                    pOpts->shutdown = TRUE;
                    break;

                case L't':
                    if (index+1 >= argc)
                        return ERROR_INVALID_DATA;
                    pOpts->shutdown_delay = _wtoi(argv[index+1]);
                    if (pOpts->shutdown_delay > 0)
                        pOpts->force = TRUE;
                    index++;
                    break;

                default:

                    ConResPuts(StdOut, IDS_USAGE);
                    return ERROR_SUCCESS;
            }
        }
    }

    return ERROR_SUCCESS;
}
