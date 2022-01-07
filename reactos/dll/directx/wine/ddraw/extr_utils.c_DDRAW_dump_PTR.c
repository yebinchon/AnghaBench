
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE (char*,void const* const) ;

__attribute__((used)) static void
DDRAW_dump_PTR(const void *in)
{
    TRACE("%p\n", *((const void * const*) in));
}
