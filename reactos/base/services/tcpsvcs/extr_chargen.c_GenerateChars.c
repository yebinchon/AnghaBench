
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;
typedef size_t INT ;
typedef scalar_t__ CHAR ;
typedef int BOOL ;


 size_t ASCII_END ;
 size_t ASCII_START ;
 int LINESIZE ;
 int NUM_CHARS ;
 int SendLine (int ,scalar_t__*) ;
 int TRUE ;
 int bShutdown ;

__attribute__((used)) static BOOL
GenerateChars(SOCKET sock)
{
    CHAR chars[NUM_CHARS];
    CHAR line[LINESIZE];
    INT charIndex;
    INT loopIndex;
    INT i;


    for (charIndex = 0, i = ASCII_START; i <= ASCII_END; charIndex++, i++)
        chars[charIndex] = (CHAR)i;

    loopIndex = 0;
    while (!bShutdown)
    {

        if (loopIndex == NUM_CHARS)
            loopIndex = 0;


        charIndex = loopIndex;
        for (i=0; i < LINESIZE - 2; i++)
        {
            line[i] = chars[charIndex];


            if (chars[charIndex] == chars[NUM_CHARS - 1])
                charIndex = 0;
            else
                charIndex++;
        }
        line[LINESIZE - 2] = '\r';
        line[LINESIZE - 1] = '\n';

        if (!SendLine(sock, line))
            break;


        loopIndex++;
    }

    return TRUE;
}
