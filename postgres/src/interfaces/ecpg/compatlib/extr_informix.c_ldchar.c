
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int byleng (char*,int) ;
 int memmove (char*,char*,int) ;

void
ldchar(char *src, int len, char *dest)
{
 int dlen = byleng(src, len);

 memmove(dest, src, dlen);
 dest[dlen] = '\0';
}
