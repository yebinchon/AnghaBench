
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int FILE ;
typedef scalar_t__ BOOL ;


 int ConResPrintf (int ,int ,int ) ;
 scalar_t__ FALSE ;
 int IDS_ERROR_MSG_NO_SCRIPT ;
 scalar_t__ InterpretScript (int *) ;
 int MAX_STRING_SIZE ;
 int StdErr ;
 scalar_t__ TRUE ;
 int * _wfopen (int ,char*) ;
 int fclose (int *) ;
 int * fgetws (int *,int,int *) ;

BOOL
RunScript(LPCWSTR filename)
{
    FILE *script;
    WCHAR tmp_string[MAX_STRING_SIZE];


    script = _wfopen(filename, L"r");
    if (script == ((void*)0))
    {

        ConResPrintf(StdErr, IDS_ERROR_MSG_NO_SCRIPT, filename);
        return FALSE;
    }


    while (fgetws(tmp_string, MAX_STRING_SIZE, script) != ((void*)0))
    {
        if (InterpretScript(tmp_string) == FALSE)
        {
            fclose(script);
            return FALSE;
        }
    }


    fclose(script);

    return TRUE;
}
