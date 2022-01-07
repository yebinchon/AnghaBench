
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef char* PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 char INI_FILE_COMMENT_CHAR ;
 int TRUE ;

BOOLEAN IniIsCommentLine(PCHAR LineOfText, ULONG TextLength)
{
    ULONG Idx;



    for (Idx=0; Idx<TextLength; Idx++)
    {
        if ((LineOfText[Idx] == ' ') ||
            (LineOfText[Idx] == '\t'))
        {
            continue;
        }
        else if (LineOfText[Idx] == INI_FILE_COMMENT_CHAR)
        {
            return TRUE;
        }
        else
        {
            break;
        }
    }

    return FALSE;
}
