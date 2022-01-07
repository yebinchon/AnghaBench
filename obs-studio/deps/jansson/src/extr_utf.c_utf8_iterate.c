
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char int32_t ;


 size_t utf8_check_first (char const) ;
 int utf8_check_full (char const*,size_t,unsigned char*) ;

const char *utf8_iterate(const char *buffer, size_t bufsize, int32_t *codepoint)
{
    size_t count;
    int32_t value;

    if(!bufsize)
        return buffer;

    count = utf8_check_first(buffer[0]);
    if(count <= 0)
        return ((void*)0);

    if(count == 1)
        value = (unsigned char)buffer[0];
    else
    {
        if(count > bufsize || !utf8_check_full(buffer, count, &value))
            return ((void*)0);
    }

    if(codepoint)
        *codepoint = value;

    return buffer + count;
}
