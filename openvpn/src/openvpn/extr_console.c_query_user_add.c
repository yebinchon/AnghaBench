
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* prompt; size_t prompt_len; char* response; size_t response_len; int echo; } ;


 int ASSERT (int) ;
 int QUERY_USER_NUMSLOTS ;
 TYPE_1__* query_user ;

void
query_user_add(char *prompt, size_t prompt_len,
               char *resp, size_t resp_len,
               bool echo)
{
    int i;




    ASSERT( prompt_len > 0 && prompt != ((void*)0) && resp_len > 0 && resp != ((void*)0) );


    for (i = 0; i < QUERY_USER_NUMSLOTS; i++)
    {
        if (query_user[i].prompt == ((void*)0))
        {
            break;
        }
    }
    ASSERT( i < QUERY_USER_NUMSLOTS );


    query_user[i].prompt = prompt;
    query_user[i].prompt_len = prompt_len;
    query_user[i].response = resp;
    query_user[i].response_len = resp_len;
    query_user[i].echo = echo;
}
