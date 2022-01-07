
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int* HeapReAlloc (int ,int ,int*,int) ;
 int StringCchCopy (int*,int,int*) ;
 int wcslen (int*) ;

__attribute__((used)) static LPWSTR
AddServiceToList(LPWSTR *lpServiceList,
                 LPWSTR lpServiceToAdd)
{
    LPWSTR lpNewList = ((void*)0);
    LPWSTR ptr;
    DWORD dwToAddSize;
    DWORD dwCurSize;

    dwToAddSize = wcslen(lpServiceToAdd) + 1;


    if (!*lpServiceList)
    {

        dwToAddSize++;

        lpNewList = HeapAlloc(GetProcessHeap(),
                              0,
                              dwToAddSize * sizeof(WCHAR));
        if (lpNewList)
        {

            StringCchCopy(lpNewList,
                          dwToAddSize,
                          lpServiceToAdd);


            lpNewList[dwToAddSize - 1] = L'\0';
        }
    }
    else
    {
        ptr = *lpServiceList;
        dwCurSize = 0;


        for (;;)
        {

            if (*ptr == L'\0' && *(ptr + 1) == L'\0')
                break;

            ptr++;
            dwCurSize++;
        }
        dwCurSize++;


        dwCurSize++;


        lpNewList = HeapReAlloc(GetProcessHeap(),
                                0,
                                *lpServiceList,
                                (dwCurSize + dwToAddSize) * sizeof(WCHAR));
        if (lpNewList)
        {

            StringCchCopy(&lpNewList[dwCurSize - 1],
                          dwToAddSize,
                          lpServiceToAdd);


            lpNewList[dwCurSize + dwToAddSize - 1] = L'\0';
        }
    }

    return lpNewList;
}
