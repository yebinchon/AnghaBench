
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int toff_t ;
typedef int thandle_t ;



__attribute__((used)) static int
_tiffDummyMapProc(thandle_t fd, void** pbase, toff_t* psize)
{
 (void) fd; (void) pbase; (void) psize;
 return (0);
}
