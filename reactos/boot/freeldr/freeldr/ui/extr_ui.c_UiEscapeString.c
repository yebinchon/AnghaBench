
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef size_t ULONG ;
typedef char* PCHAR ;


 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

VOID UiEscapeString(PCHAR String)
{
    ULONG Idx;

    for (Idx=0; Idx<strlen(String); Idx++)
    {

        if (String[Idx] == '\\' && String[Idx+1] == 'n')
        {

            String[Idx] = '\n';


            strcpy(&String[Idx+1], &String[Idx+2]);
        }
    }
}
