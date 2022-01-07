
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int CreateDirectory (int *,int *) ;
 int GetLastError () ;
 size_t MultiByteToWideChar (int ,int ,char const*,int,int *,size_t) ;
 int errno ;
 int free (int *) ;
 scalar_t__ malloc (int) ;

int wceex_mkdir(const char *filename)
{
    int res;
    size_t len;
    wchar_t *widestr;


    len = MultiByteToWideChar (CP_ACP, 0, filename, -1, ((void*)0), 0) ;
 widestr = (wchar_t*)malloc(sizeof(wchar_t) * len);

    MultiByteToWideChar( CP_ACP, 0, filename, -1, widestr, len);


    res = CreateDirectory(widestr, ((void*)0));


    free(widestr);

    if (res)
     return 0;
    else
    {
        errno = GetLastError();
        return -1;
    }
}
