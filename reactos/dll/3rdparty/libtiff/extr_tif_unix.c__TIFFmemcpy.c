
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tmsize_t ;


 int memcpy (void*,void const*,size_t) ;

void
_TIFFmemcpy(void* d, const void* s, tmsize_t c)
{
 memcpy(d, s, (size_t) c);
}
