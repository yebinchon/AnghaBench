
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int memset (char*,int ,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static int
recv_string(int fd, char *buffer, int len)
{
    if (len > 0)
    {
        ssize_t size;
        memset(buffer, 0, len);
        size = read(fd, buffer, len);
        buffer[len-1] = 0;
        if (size >= 1)
        {
            return (int)size;
        }
    }
    return -1;
}
