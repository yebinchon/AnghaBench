
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szIdBuffer ;
typedef char WCHAR ;
typedef int ULONG ;
typedef int PUCHAR ;
typedef int PSTR ;
typedef int NameBuffer ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BOOLEAN ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ RegOpenKey (int *,char*,int *) ;
 scalar_t__ RegQueryValue (int ,char*,int *,int ,int*) ;
 int TRUE ;
 int sprintf (int ,char*,char*) ;
 int wcscpy (char*,char*) ;

__attribute__((used)) static BOOLEAN
WinLdrGetNLSNames(PSTR AnsiName,
                  PSTR OemName,
                  PSTR LangName)
{
    LONG rc = ERROR_SUCCESS;
    HKEY hKey;
    WCHAR szIdBuffer[80];
    WCHAR NameBuffer[80];
    ULONG BufferSize;


    rc = RegOpenKey(((void*)0),
        L"\\Registry\\Machine\\SYSTEM\\CurrentControlSet\\Control\\NLS\\CodePage",
        &hKey);
    if (rc != ERROR_SUCCESS)
    {

        return FALSE;
    }


    BufferSize = sizeof(szIdBuffer);
    rc = RegQueryValue(hKey, L"ACP", ((void*)0), (PUCHAR)szIdBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {

        return FALSE;
    }

    BufferSize = sizeof(NameBuffer);
    rc = RegQueryValue(hKey, szIdBuffer, ((void*)0), (PUCHAR)NameBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {


        wcscpy(NameBuffer, L"c_1252.nls");
    }
    sprintf(AnsiName, "%S", NameBuffer);


    BufferSize = sizeof(szIdBuffer);
    rc = RegQueryValue(hKey, L"OEMCP", ((void*)0), (PUCHAR)szIdBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {

        return FALSE;
    }

    BufferSize = sizeof(NameBuffer);
    rc = RegQueryValue(hKey, szIdBuffer, ((void*)0), (PUCHAR)NameBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {


        wcscpy(NameBuffer, L"c_437.nls");
    }
    sprintf(OemName, "%S", NameBuffer);


    rc = RegOpenKey(((void*)0),
        L"\\Registry\\Machine\\SYSTEM\\CurrentControlSet\\Control\\NLS\\Language",
        &hKey);
    if (rc != ERROR_SUCCESS)
    {

        return FALSE;
    }


    BufferSize = sizeof(szIdBuffer);
    rc = RegQueryValue(hKey, L"Default", ((void*)0), (PUCHAR)szIdBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {

        return FALSE;
    }

    BufferSize = sizeof(NameBuffer);
    rc = RegQueryValue(hKey, szIdBuffer, ((void*)0), (PUCHAR)NameBuffer, &BufferSize);
    if (rc != ERROR_SUCCESS)
    {

        return FALSE;
    }
    sprintf(LangName, "%S", NameBuffer);

    return TRUE;
}
