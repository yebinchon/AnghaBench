
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 char* GetMultiByteString (char*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int closeKey () ;
 scalar_t__ currentKeyHandle ;
 int delete_registry_key (char*) ;
 int fprintf (int ,char*,int ,char*) ;
 int getAppName () ;
 scalar_t__ openKeyW (char*) ;
 int processSetValue (char*,int ) ;
 int stderr ;
 char* strrchrW (char*,char) ;

__attribute__((used)) static void processRegEntry(WCHAR* stdInput, BOOL isUnicode)
{




    if (stdInput == ((void*)0)) {
        closeKey();
        return;
    }

    if ( stdInput[0] == '[')
    {
        WCHAR* keyEnd;
        closeKey();


        stdInput++;
        keyEnd = strrchrW(stdInput, ']');
        if (keyEnd)
            *keyEnd='\0';


        if ( stdInput[0] == '-')
        {
            delete_registry_key(stdInput + 1);
        } else if ( openKeyW(stdInput) != ERROR_SUCCESS )
        {
            char* stdInputA = GetMultiByteString(stdInput);
            fprintf(stderr,"%S: setValue failed to open key %s\n",
                    getAppName(), stdInputA);
            HeapFree(GetProcessHeap(), 0, stdInputA);
        }
    } else if( currentKeyHandle &&
               (( stdInput[0] == '@') ||
                ( stdInput[0] == '\"')))
    {
        processSetValue(stdInput, isUnicode);
    } else
    {



        closeKey();
    }
}
