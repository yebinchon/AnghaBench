
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ConResPrintf (int ,int ,...) ;
 int DWNL_E_LASTERROR ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int IDS_ERROR_CODE ;
 int IDS_ERROR_DOWNLOAD ;
 int IDS_ERROR_FILENAME ;
 int IDS_ERROR_PROTOCOL ;
 int StdErr ;
 int write_status (char*) ;

__attribute__((used)) static int
print_err(int iErr)
{
    write_status(L"");

    if (iErr == DWNL_E_LASTERROR)
    {
        if (GetLastError() == ERROR_SUCCESS)
        {

            ConResPrintf(StdErr, IDS_ERROR_DOWNLOAD);
        }
        else
        {

            ConResPrintf(StdErr, IDS_ERROR_CODE, GetLastError());
        }
    }
    else
    {
        switch (iErr)
        {
            case 129:
                ConResPrintf(StdErr, IDS_ERROR_FILENAME);
                break;

            case 128:
                ConResPrintf(StdErr, IDS_ERROR_PROTOCOL);
                break;
        }
    }

    return 1;
}
