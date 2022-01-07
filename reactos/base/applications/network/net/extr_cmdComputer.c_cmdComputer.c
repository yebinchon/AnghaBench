
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {int* usri1_name; int* usri1_password; int usri1_flags; int * usri1_script_path; int * usri1_comment; int * usri1_home_dir; int usri1_priv; scalar_t__ usri1_password_age; } ;
typedef TYPE_1__ USER_INFO_1 ;
typedef int* PWSTR ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int ConPuts (int ,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int LM20_PWLEN ;
 int MAX_PATH ;
 int MSG_COMPUTER_HELP ;
 int MSG_COMPUTER_SYNTAX ;
 scalar_t__ NERR_Success ;
 scalar_t__ NetUserAdd (int *,int,int ,int *) ;
 scalar_t__ NetUserDel (int *,int*) ;
 int PrintErrorMessage (scalar_t__) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int StdOut ;
 scalar_t__ TRUE ;
 int UF_SCRIPT ;
 int UF_WORKSTATION_TRUST_ACCOUNT ;
 int UNICODE_NULL ;
 int USER_PRIV_USER ;
 scalar_t__ _wcsicmp (int*,char*) ;
 int _wcslwr (int*) ;
 int wcscat (int*,char*) ;
 int wcscpy (int*,int*) ;
 int wcsncpy (int*,int*,int) ;

INT
cmdComputer(
    INT argc,
    WCHAR **argv)
{
    WCHAR ComputerAccountName[MAX_PATH + 2];
    WCHAR ComputerPassword[LM20_PWLEN + 1];
    USER_INFO_1 UserInfo;
    INT i, result = 0;
    BOOL bAdd = FALSE;
    BOOL bDelete = FALSE;
    PWSTR pComputerName = ((void*)0);
    NET_API_STATUS Status = NERR_Success;
    i = 2;
    if (argc > 2 && argv[i][0] == L'\\' && argv[i][1] == L'\\')
    {
        pComputerName = argv[i];
        i++;
    }

    for (; i < argc; i++)
    {
        if (_wcsicmp(argv[i], L"help") == 0)
        {

            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_COMPUTER_SYNTAX);
            return 0;
        }

        if (_wcsicmp(argv[i], L"/help") == 0)
        {

            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_COMPUTER_SYNTAX);
            PrintNetMessage(MSG_COMPUTER_HELP);
            return 0;
        }

        if (_wcsicmp(argv[i], L"/add") == 0)
        {
            bAdd = TRUE;
            continue;
        }
        else if (_wcsicmp(argv[i], L"/del") == 0)
        {
            bDelete = TRUE;
            continue;
        }
        else
        {
            PrintErrorMessage(3506 );
            return 1;
        }
    }

    if (pComputerName == ((void*)0) ||
        (bAdd == FALSE && bDelete == FALSE) ||
        (bAdd == TRUE && bDelete == TRUE))
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_COMPUTER_SYNTAX);
        return 1;
    }





    wcscpy(ComputerAccountName, &pComputerName[2]);
    wcscat(ComputerAccountName, L"$");

    if (bAdd)
    {





        wcsncpy(ComputerPassword, &pComputerName[2], LM20_PWLEN);
        ComputerPassword[LM20_PWLEN] = UNICODE_NULL;
        _wcslwr(ComputerPassword);


        UserInfo.usri1_name = ComputerAccountName;
        UserInfo.usri1_password = ComputerPassword;
        UserInfo.usri1_password_age = 0;
        UserInfo.usri1_priv = USER_PRIV_USER;
        UserInfo.usri1_home_dir = ((void*)0);
        UserInfo.usri1_comment = ((void*)0);
        UserInfo.usri1_flags = UF_SCRIPT | UF_WORKSTATION_TRUST_ACCOUNT;
        UserInfo.usri1_script_path = ((void*)0);


        Status = NetUserAdd(((void*)0),
                            1,
                            (LPBYTE)&UserInfo,
                            ((void*)0));
    }
    else if (bDelete)
    {

        Status = NetUserDel(((void*)0),
                            ComputerAccountName);
    }

    if (Status == NERR_Success)
    {
        PrintErrorMessage(ERROR_SUCCESS);
    }
    else
    {
        PrintErrorMessage(Status);
        result = 1;
    }

    return result;
}
