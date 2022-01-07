
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int toff_t ;
typedef int thandle_t ;


 int UnmapViewOfFile (void*) ;

__attribute__((used)) static void
_tiffUnmapProc(thandle_t fd, void* base, toff_t size)
{
 (void) fd;
 (void) size;
 UnmapViewOfFile(base);
}
