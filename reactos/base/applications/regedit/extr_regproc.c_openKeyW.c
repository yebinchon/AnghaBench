
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int GetMultiByteString (int *) ;
 int KEY_ALL_ACCESS ;
 int REG_OPTION_NON_VOLATILE ;
 scalar_t__ RegCreateKeyExW (int ,int *,int ,int *,int ,int ,int *,int **,int *) ;
 int * currentKeyHandle ;
 int currentKeyName ;
 int parseKeyName (int *,int *,int **) ;

__attribute__((used)) static LONG openKeyW(WCHAR* stdInput)
{
    HKEY keyClass;
    WCHAR* keyPath;
    DWORD dwDisp;
    LONG res;


    if (stdInput == ((void*)0))
        return ERROR_INVALID_PARAMETER;


    if (!parseKeyName(stdInput, &keyClass, &keyPath))
        return ERROR_INVALID_PARAMETER;

    res = RegCreateKeyExW(
               keyClass,
               keyPath,
               0,
               ((void*)0),
               REG_OPTION_NON_VOLATILE,
               KEY_ALL_ACCESS,
               ((void*)0),
               &currentKeyHandle,
               &dwDisp);


    if (res == ERROR_SUCCESS)
        currentKeyName = GetMultiByteString(stdInput);
    else
        currentKeyHandle = ((void*)0);

    return res;

}
