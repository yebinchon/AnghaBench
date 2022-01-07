
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int MoveFile (int *,int *) ;
 size_t MultiByteToWideChar (int ,int ,char const*,int,int *,size_t) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;

int wceex_rename(const char *oldfile, const char *newfile)
{
    int res;
    size_t lenold;
    size_t lennew;
    wchar_t *wsold;
    wchar_t *wsnew;




    lenold = MultiByteToWideChar (CP_ACP, 0, oldfile, -1, ((void*)0), 0) ;
    wsold = (wchar_t*)malloc(sizeof(wchar_t) * lenold);
    MultiByteToWideChar( CP_ACP, 0, oldfile, -1, wsold, lenold);


    lennew = MultiByteToWideChar (CP_ACP, 0, newfile, -1, ((void*)0), 0) ;
    wsnew = (wchar_t*)malloc(sizeof(wchar_t) * lennew);
    MultiByteToWideChar(CP_ACP, 0, newfile, -1, wsnew, lennew);


    res = MoveFile(wsold, wsnew);


    free(wsold);
    free(wsnew);

    if (res)
        return 0;
    else
        return -1;
}
