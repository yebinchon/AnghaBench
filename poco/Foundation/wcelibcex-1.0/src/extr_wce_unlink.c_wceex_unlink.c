
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int DeleteFile (int *) ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int errno ;
 int free (int *) ;
 scalar_t__ malloc (int) ;

int wceex_unlink(const char *filename)
{
    int res;
    int len;
    wchar_t* pWideStr;


    len = MultiByteToWideChar(CP_ACP, 0, filename, -1, ((void*)0), 0) ;
    pWideStr = (wchar_t*)malloc(sizeof(wchar_t) * len);

    MultiByteToWideChar(CP_ACP, 0, filename, -1, pWideStr, len);


    res = DeleteFile(pWideStr);


    free(pWideStr);

    if (res)
        return 0;
    else
    {
        errno = GetLastError();
        return -1;
    }
}
