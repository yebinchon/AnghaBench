
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_size_t ;


 void* malloc (int ) ;
 int memset (void*,int ,int ) ;

void *grub_zalloc (grub_size_t size)
{
    void *ret;
    ret = malloc(size);
    memset (ret, 0, size);

    return ret;
}
