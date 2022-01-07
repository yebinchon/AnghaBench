
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int versize; int * version; } ;
typedef char* LPWSTR ;
typedef TYPE_1__ IAssemblyNameImpl ;
typedef int HRESULT ;


 int S_OK ;
 char* wcschr (char*,char) ;
 int wcstol (char*,int *,int) ;

__attribute__((used)) static HRESULT parse_version(IAssemblyNameImpl *name, LPWSTR version)
{
    LPWSTR beg, end;
    int i;

    for (i = 0, beg = version; i < 4; i++)
    {
        if (!*beg)
            return S_OK;

        end = wcschr(beg, '.');

        if (end) *end = '\0';
        name->version[i] = wcstol(beg, ((void*)0), 10);
        name->versize++;

        if (!end && i < 3)
            return S_OK;

        beg = end + 1;
    }

    return S_OK;
}
