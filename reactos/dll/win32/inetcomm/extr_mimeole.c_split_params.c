
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int header_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int add_param (int *,char*) ;

__attribute__((used)) static void split_params(header_t *header, char *value)
{
    char *cp = value, *start = value;
    BOOL in_quotes = FALSE, done_value = FALSE;

    while(*cp)
    {
        if(!in_quotes && *cp == ';')
        {
            *cp = '\0';
            if(done_value) add_param(header, start);
            done_value = TRUE;
            start = cp + 1;
        }
        else if(*cp == '"')
            in_quotes = !in_quotes;
        cp++;
    }
    if(done_value) add_param(header, start);
}
