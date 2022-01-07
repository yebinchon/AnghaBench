
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* mem; scalar_t__ mempos; scalar_t__ memsize; } ;
typedef char* LPTSTR ;
typedef char* LPSTR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int OutputCodePage ;
 int TRUE ;
 int WARN (char*) ;
 TYPE_1__* bc ;
 char* cmd_alloc (int) ;
 int cmd_free (char*) ;
 int error_out_of_memory () ;

BOOL BatchGetString(LPTSTR lpBuffer, INT nBufferLength)
{
    LPSTR lpString;
    INT len = 0;
    lpString = lpBuffer;


    if (bc->mem)
    {
        for (; (bc->mempos < bc->memsize && len < (nBufferLength-1)); len++)
        {
            lpString[len] = bc->mem[bc->mempos++];
            if (lpString[len] == '\n' )
            {
                len++;
                break;
            }
        }
    }

    if (!len)
    {



        return FALSE;
    }

    lpString[len++] = '\0';




    return TRUE;
}
