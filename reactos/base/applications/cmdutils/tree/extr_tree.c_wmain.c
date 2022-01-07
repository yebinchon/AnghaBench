
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* PWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ConInitStdStreams () ;
 int ConPrintf (int ,char*,int*) ;
 int ConPuts (int ,char*) ;
 int ConResPrintf (int ,int ,int,int) ;
 int ConResPuts (int ,int ) ;
 scalar_t__ FALSE ;
 int GetCurrentDirectoryW (int,int*) ;
 int GetDirectoryStructure (int*,int,char*) ;
 int GetVolumeInformationW (int *,int *,int ,int*,int *,int *,int *,int ) ;
 int IDS_FOLDER_PATH ;
 int IDS_NO_SUBDIRECTORIES ;
 int IDS_USAGE ;
 int IDS_VOL_SERIAL ;
 scalar_t__ SetCurrentDirectoryW (int*) ;
 int StdOut ;
 void* TRUE ;
 void* bShowFiles ;
 void* bUseAscii ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int towlower (int) ;
 int wcscpy (int*,int*) ;
 int wcstok (int*,char*) ;

int wmain(int argc, WCHAR* argv[])
{
    DWORD dwSerial = 0;
    WCHAR t = 0;
    PWSTR strPath = ((void*)0);
    DWORD sz = 0;

    PWSTR driveLetter = ((void*)0);

    int i;


    ConInitStdStreams();


    for (i = 1; i < argc; ++i)
    {
        if (argv[i][0] == L'-' || argv[i][0] == L'/')
        {
            switch (towlower(argv[i][1]))
            {
                case L'?':

                    ConResPuts(StdOut, IDS_USAGE);
                    return 0;

                case L'f':
                    bShowFiles = TRUE;
                    break;

                case L'a':
                    bUseAscii = TRUE;
                    break;

                default:
                    break;
            }
        }
        else
        {



            BOOL b = SetCurrentDirectoryW(argv[i]);
            if (b == FALSE)
            {
                ConResPuts(StdOut, IDS_NO_SUBDIRECTORIES);
                return 1;
            }
        }
    }

    ConResPuts(StdOut, IDS_FOLDER_PATH);

    GetVolumeInformationW(((void*)0), ((void*)0), 0, &dwSerial, ((void*)0), ((void*)0), ((void*)0), 0);
    ConResPrintf(StdOut, IDS_VOL_SERIAL, dwSerial >> 16, dwSerial & 0xffff);


    sz = GetCurrentDirectoryW(1, &t);

    strPath = (PWSTR)malloc(sz * sizeof(WCHAR));


    GetCurrentDirectoryW(sz, strPath);


    driveLetter = (PWSTR)malloc(sz * sizeof(WCHAR));




    wcscpy(driveLetter, strPath);
    wcstok(driveLetter, L":");

    ConPrintf(StdOut, L"%s:.\n", driveLetter);

    free(driveLetter);


    GetDirectoryStructure(strPath, 1, L"          ");

    free(strPath);
    ConPuts(StdOut, L"\n");

    return 0;
}
