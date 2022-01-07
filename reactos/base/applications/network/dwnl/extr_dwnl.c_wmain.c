
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int ConInitStdStreams () ;
 int ConResPrintf (int ,int ) ;
 int IDS_USAGE ;
 int StdOut ;
 int download_file (int *,int *) ;
 int print_err (int) ;

int wmain(int argc, WCHAR **argv)
{
    int iErr, iRet = 0;


    ConInitStdStreams();

    if(argc != 2 && argc != 3)
    {
        ConResPrintf(StdOut, IDS_USAGE);
        return 2;
    }

    iErr = download_file(argv[1], argc == 3 ? argv[2] : ((void*)0));
    if (iErr <= 0)
        iRet = print_err(iErr);

    return iRet;
}
