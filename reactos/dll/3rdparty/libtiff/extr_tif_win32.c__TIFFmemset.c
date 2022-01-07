
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tmsize_t ;


 int memset (void*,int,size_t) ;

void
_TIFFmemset(void* p, int v, tmsize_t c)
{
 memset(p, v, (size_t) c);
}
