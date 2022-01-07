
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t utf8_check_first (char const) ;
 int utf8_check_full (char const*,size_t,int *) ;

int utf8_check_string(const char *string, size_t length)
{
    size_t i;

    for(i = 0; i < length; i++)
    {
        size_t count = utf8_check_first(string[i]);
        if(count == 0)
            return 0;
        else if(count > 1)
        {
            if(count > length - i)
                return 0;

            if(!utf8_check_full(&string[i], count, ((void*)0)))
                return 0;

            i += count - 1;
        }
    }

    return 1;
}
