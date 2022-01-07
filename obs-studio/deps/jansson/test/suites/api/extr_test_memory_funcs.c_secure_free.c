
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void secure_free(void *ptr)
{
    size_t size;

    ptr = (char *)ptr - 8;
    size = *((size_t *)ptr);

                   memset(ptr, 0, size + 8);
    free(ptr);
}
