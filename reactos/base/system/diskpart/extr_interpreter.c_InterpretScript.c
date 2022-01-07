
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int args_vector ;
typedef int* LPWSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ InterpretCmd (int,int**) ;
 int MAX_ARGS_COUNT ;
 scalar_t__ TRUE ;
 scalar_t__ iswspace (int) ;
 int memset (int**,int ,int) ;

BOOL
InterpretScript(LPWSTR input_line)
{
    LPWSTR args_vector[MAX_ARGS_COUNT];
    INT args_count = 0;
    BOOL bWhiteSpace = TRUE;
    LPWSTR ptr;

    memset(args_vector, 0, sizeof(args_vector));

    ptr = input_line;
    while (*ptr != 0)
    {
        if (iswspace(*ptr) || *ptr == L'\n')
        {
            *ptr = 0;
            bWhiteSpace = TRUE;
        }
        else
        {
            if ((bWhiteSpace != FALSE) && (args_count < MAX_ARGS_COUNT))
            {
                args_vector[args_count] = ptr;
                args_count++;
            }

            bWhiteSpace = FALSE;
        }

        ptr++;
    }


    return InterpretCmd(args_count, args_vector);
}
