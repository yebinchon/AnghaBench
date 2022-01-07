
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tmsize_t ;


 void* realloc (void*,size_t) ;

void*
_TIFFrealloc(void* p, tmsize_t s)
{
 return (realloc(p, (size_t) s));
}
