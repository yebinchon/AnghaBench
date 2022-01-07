
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int * PCHAR ;


 int strcpy (int *,char*) ;
 int strlen (int *) ;

VOID UiTruncateStringEllipsis(PCHAR StringText, ULONG MaxChars)
{

    if (strlen(StringText) > MaxChars)
        strcpy(&StringText[MaxChars - 3], "...");
}
