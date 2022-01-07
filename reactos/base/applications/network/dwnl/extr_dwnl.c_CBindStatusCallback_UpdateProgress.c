
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int Size; int Progress; } ;
typedef TYPE_1__ CBindStatusCallback ;


 int ARRAYSIZE (int *) ;
 int IDS_BYTES_DOWNLOADED ;
 int IDS_BYTES_DOWNLOADED_FULL ;
 int LoadStringW (int *,int ,int *,int ) ;
 int MAX_PATH ;
 int write_status (int *,int,...) ;

__attribute__((used)) static void
CBindStatusCallback_UpdateProgress(CBindStatusCallback *This)
{
    WCHAR szMessage[MAX_PATH];


    if (This->Size != 0)
    {
        UINT Percentage;

        Percentage = (UINT)((This->Progress * 100) / This->Size);
        if (Percentage > 99)
            Percentage = 99;

        LoadStringW(((void*)0), IDS_BYTES_DOWNLOADED_FULL, szMessage, ARRAYSIZE(szMessage));

        write_status(szMessage, Percentage, This->Progress);
    }
    else
    {
        LoadStringW(((void*)0), IDS_BYTES_DOWNLOADED, szMessage, ARRAYSIZE(szMessage));


        write_status(szMessage, This->Progress);
    }
}
