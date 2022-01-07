
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int strlen (char const*) ;
 int write (int,char const*,int const) ;

__attribute__((used)) static int
send_string(int fd, const char *string)
{
    const int len = strlen(string) + 1;
    const ssize_t size = write(fd, string, len);
    if (size == len)
    {
        return (int) size;
    }
    else
    {
        return -1;
    }
}
