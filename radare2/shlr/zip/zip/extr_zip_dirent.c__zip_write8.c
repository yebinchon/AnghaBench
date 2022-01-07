
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint64_t ;
typedef int FILE ;


 int putc (int,int *) ;

void
_zip_write8(zip_uint64_t i, FILE *fp)
{
    putc(i&0xff, fp);
    putc((i>>8)&0xff, fp);
    putc((i>>16)&0xff, fp);
    putc((i>>24)&0xff, fp);
    putc((i>>32)&0xff, fp);
    putc((i>>40)&0xff, fp);
    putc((i>>48)&0xff, fp);
    putc((i>>56)&0xff, fp);

    return;
}
