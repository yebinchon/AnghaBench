
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned
ssl_hello_size(const void *templ)
{
    const unsigned char *px = (const unsigned char *)templ;
    size_t template_size;

    template_size = (px[3]<<8 | px[4]) + 5;

    return (unsigned)template_size;
}
