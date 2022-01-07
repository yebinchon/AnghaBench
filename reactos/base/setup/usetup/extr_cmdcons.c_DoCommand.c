
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int flags; int (* func ) (int ,char*) ;int * name; } ;
typedef int PCONSOLE_STATE ;
typedef char* LPSTR ;
typedef TYPE_1__* LPCOMMAND ;
typedef char CHAR ;


 int CMD_SPECIAL ;
 int CONSOLE_ConOutPuts (char*) ;
 TYPE_1__* Commands ;
 int DPRINT1 (char*,char*) ;
 int IsDelimiter (char) ;
 int MAX_PATH ;
 int cl ;
 char* cstart ;
 scalar_t__ isspace (char) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ stricmp (char*,int *) ;
 int strlen (int *) ;
 int strncmp (int *,char*,int) ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int tolower (int ) ;

__attribute__((used)) static
VOID
DoCommand(
    PCONSOLE_STATE State,
    LPSTR line)
{
    CHAR com[MAX_PATH];
    LPSTR cp = com;

    LPSTR rest = line;

    LPCOMMAND cmdptr;

    DPRINT1("DoCommand: (\'%s\')\n", line);


    while (isspace(*rest))
        rest++;




    if (*rest)
    {

        while (!IsDelimiter(*rest))
            *cp++ = tolower(*rest++);


        *cp = '\0';


        while (isspace (*rest))
            rest++;


        for (cmdptr = Commands; ; cmdptr++)
        {

            if (cmdptr->name == ((void*)0))
            {
                CONSOLE_ConOutPuts("Unknown command. Enter HELP to get a list of commands.");
                break;
            }

            if (stricmp(com, cmdptr->name) == 0)
            {
                cmdptr->func(State, rest);
                break;
            }
        }
    }
}
