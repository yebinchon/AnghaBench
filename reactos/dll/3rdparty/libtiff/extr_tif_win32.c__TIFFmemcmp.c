
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tmsize_t ;


 int memcmp (void const*,void const*,size_t) ;

int
_TIFFmemcmp(const void* p1, const void* p2, tmsize_t c)
{
 return (memcmp(p1, p2, (size_t) c));
}
