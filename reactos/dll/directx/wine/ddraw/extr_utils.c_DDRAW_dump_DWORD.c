
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int TRACE (char*,int const) ;

__attribute__((used)) static void
DDRAW_dump_DWORD(const void *in)
{
    TRACE("%d\n", *((const DWORD *) in));
}
