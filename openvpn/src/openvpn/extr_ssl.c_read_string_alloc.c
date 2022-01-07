
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_read (struct buffer*,char*,int const) ;
 int buf_read_u16 (struct buffer*) ;
 int check_malloc_return (char*) ;
 int free (char*) ;
 scalar_t__ malloc (int const) ;

__attribute__((used)) static char *
read_string_alloc(struct buffer *buf)
{
    const int len = buf_read_u16(buf);
    char *str;

    if (len < 1)
    {
        return ((void*)0);
    }
    str = (char *) malloc(len);
    check_malloc_return(str);
    if (!buf_read(buf, str, len))
    {
        free(str);
        return ((void*)0);
    }
    str[len-1] = '\0';
    return str;
}
