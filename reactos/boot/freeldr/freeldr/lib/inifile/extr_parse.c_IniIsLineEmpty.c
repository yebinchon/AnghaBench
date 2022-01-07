
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN IniIsLineEmpty(PCHAR LineOfText, ULONG TextLength)
{
    ULONG Idx;


    for (Idx=0; Idx<TextLength; Idx++)
    {
        if ((LineOfText[Idx] == ' ') ||
            (LineOfText[Idx] == '\t') ||
            (LineOfText[Idx] == '\n') ||
            (LineOfText[Idx] == '\r'))
        {
            continue;
        }
        else
        {
            return FALSE;
        }
    }

    return TRUE;
}
