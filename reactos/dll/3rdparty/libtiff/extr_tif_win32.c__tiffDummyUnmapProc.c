
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int toff_t ;
typedef int thandle_t ;



__attribute__((used)) static void
_tiffDummyUnmapProc(thandle_t fd, void* base, toff_t size)
{
 (void) fd;
 (void) base;
 (void) size;
}
