
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tmsize_t ;


 void* malloc (size_t) ;

void*
_TIFFmalloc(tmsize_t s)
{
        if (s == 0)
                return ((void *) ((void*)0));

 return (malloc((size_t) s));
}
