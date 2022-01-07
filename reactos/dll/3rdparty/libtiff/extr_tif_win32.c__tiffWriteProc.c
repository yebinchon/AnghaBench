
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint64 ;
typedef scalar_t__ tmsize_t ;
typedef int thandle_t ;
typedef int LPVOID ;
typedef int DWORD ;


 int WriteFile (int ,int ,int,int*,int *) ;

__attribute__((used)) static tmsize_t
_tiffWriteProc(thandle_t fd, void* buf, tmsize_t size)
{



 uint8* ma;
 uint64 mb;
 DWORD n;
 DWORD o;
 tmsize_t p;
 ma=(uint8*)buf;
 mb=size;
 p=0;
 while (mb>0)
 {
  n=0x80000000UL;
  if ((uint64)n>mb)
   n=(DWORD)mb;
  if (!WriteFile(fd,(LPVOID)ma,n,&o,((void*)0)))
   return(0);
  ma+=o;
  mb-=o;
  p+=o;
  if (o!=n)
   break;
 }
 return(p);
}
