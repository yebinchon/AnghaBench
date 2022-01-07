
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;
typedef scalar_t__ toff_t ;
typedef scalar_t__ tmsize_t ;
typedef int thandle_t ;
typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int * CreateFileMapping (int ,int *,int ,int ,int ,int *) ;
 int FILE_MAP_READ ;
 void* MapViewOfFile (int *,int ,int ,int ,int ) ;
 int PAGE_READONLY ;
 scalar_t__ _tiffSizeProc (int ) ;

__attribute__((used)) static int
_tiffMapProc(thandle_t fd, void** pbase, toff_t* psize)
{
 uint64 size;
 tmsize_t sizem;
 HANDLE hMapFile;

 size = _tiffSizeProc(fd);
 sizem = (tmsize_t)size;
 if ((uint64)sizem!=size)
  return (0);



 hMapFile = CreateFileMapping(fd, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
 if (hMapFile == ((void*)0))
  return (0);
 *pbase = MapViewOfFile(hMapFile, FILE_MAP_READ, 0, 0, 0);
 CloseHandle(hMapFile);
 if (*pbase == ((void*)0))
  return (0);
 *psize = size;
 return(1);
}
