
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int from_locale (char*) ;
 int memmove (char*,char*,size_t) ;
 int snprintf (char*,size_t,char*,int,double) ;
 char* strchr (char*,char) ;

int jsonp_dtostr(char *buffer, size_t size, double value, int precision)
{
    int ret;
    char *start, *end;
    size_t length;

    if (precision == 0)
        precision = 17;

    ret = snprintf(buffer, size, "%.*g", precision, value);
    if(ret < 0)
        return -1;

    length = (size_t)ret;
    if(length >= size)
        return -1;







    if(strchr(buffer, '.') == ((void*)0) &&
       strchr(buffer, 'e') == ((void*)0))
    {
        if(length + 3 >= size) {

            return -1;
        }
        buffer[length] = '.';
        buffer[length + 1] = '0';
        buffer[length + 2] = '\0';
        length += 2;
    }



    start = strchr(buffer, 'e');
    if(start) {
        start++;
        end = start + 1;

        if(*start == '-')
            start++;

        while(*end == '0')
            end++;

        if(end != start) {
            memmove(start, end, length - (size_t)(end - buffer));
            length -= (size_t)(end - start);
        }
    }

    return (int)length;
}
