
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTF8_putc (unsigned char*,int,unsigned long) ;

__attribute__((used)) static int cpy_utf8(unsigned long value, void *arg)
{
    unsigned char **p;
    int ret;
    p = arg;

    ret = UTF8_putc(*p, 0xff, value);
    *p += ret;
    return 1;
}
