
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MALLOC (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
duplicate_string(const char *str)
{
    size_t length;
    char *result;



    if (str == ((void*)0))
        length = 0;
    else
        length = strlen(str);


    result = MALLOC(length + 1);



    if (str)
        memcpy(result, str, length+1);
    result[length] = '\0';

    return result;
}
