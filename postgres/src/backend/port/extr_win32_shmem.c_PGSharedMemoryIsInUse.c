
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int FALSE ;
 int FILE_MAP_READ ;
 char* GetSharedMemName () ;
 int * OpenFileMapping (int ,int ,char*) ;
 int free (char*) ;

bool
PGSharedMemoryIsInUse(unsigned long id1, unsigned long id2)
{
 char *szShareMem;
 HANDLE hmap;

 szShareMem = GetSharedMemName();

 hmap = OpenFileMapping(FILE_MAP_READ, FALSE, szShareMem);

 free(szShareMem);

 if (hmap == ((void*)0))
  return 0;

 CloseHandle(hmap);
 return 1;
}
