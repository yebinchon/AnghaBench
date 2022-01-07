
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int * LPBYTE ;
typedef int INT ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int ConOutPrintf (int *,int *,int *) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int * HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyEx (int *,int *,int ,int ,int **) ;
 scalar_t__ RegQueryValueEx (int *,int *,int *,int *,int *,scalar_t__*) ;
 int WARN (char*) ;
 int * _T (char*) ;
 int * cmd_alloc (scalar_t__) ;
 int cmd_free (int *) ;

__attribute__((used)) static INT
PrintAssociation(LPTSTR extension)
{
    DWORD return_val;
    HKEY hKey = ((void*)0), hInsideKey = ((void*)0);

    DWORD fileTypeLength = 0;
    LPTSTR fileType = ((void*)0);

    return_val = RegOpenKeyEx(HKEY_LOCAL_MACHINE, _T("SOFTWARE\\Classes"), 0, KEY_READ, &hKey);

    if (return_val != ERROR_SUCCESS)
        return -1;

    return_val = RegOpenKeyEx(hKey, extension, 0, KEY_READ, &hInsideKey);
    RegCloseKey(hKey);

    if (return_val != ERROR_SUCCESS)
        return 0;


    return_val = RegQueryValueEx(hInsideKey, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &fileTypeLength);

    if (return_val == ERROR_FILE_NOT_FOUND)
    {
        RegCloseKey(hInsideKey);
        return 0;
    }

    if (return_val != ERROR_SUCCESS)
    {
        RegCloseKey(hInsideKey);
        return -2;
    }

    fileType = cmd_alloc(fileTypeLength * sizeof(TCHAR));
    if (!fileType)
    {
        WARN("Cannot allocate memory for fileType!\n");
        RegCloseKey(hInsideKey);
        return -2;
    }


    return_val = RegQueryValueEx(hInsideKey, ((void*)0), ((void*)0), ((void*)0), (LPBYTE)fileType, &fileTypeLength);
    RegCloseKey(hInsideKey);

    if (return_val != ERROR_SUCCESS)
    {
        cmd_free(fileType);
        return -2;
    }

    if (fileTypeLength != 0)
    {
        ConOutPrintf(_T("%s=%s\n"), extension, fileType);
    }

    cmd_free(fileType);
    return 1;
}
