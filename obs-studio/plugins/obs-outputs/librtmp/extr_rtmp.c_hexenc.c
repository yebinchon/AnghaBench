
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void hexenc(unsigned char *inbuf, int len, char *dst)
{
    char *ptr = dst;
    while(len--)
    {
        sprintf(ptr, "%02x", *inbuf++);
        ptr += 2;
    }
    *ptr = '\0';
}
