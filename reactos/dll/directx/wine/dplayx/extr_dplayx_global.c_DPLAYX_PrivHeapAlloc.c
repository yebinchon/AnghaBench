
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {int * data; scalar_t__ used; } ;
typedef int * LPVOID ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FIXME (char*,int) ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ TRUE ;
 int ZeroMemory (int *,int) ;
 int dwBlockSize ;
 size_t dwMaxBlock ;
 TYPE_1__* lpMemArea ;

__attribute__((used)) static LPVOID DPLAYX_PrivHeapAlloc( DWORD flags, DWORD size )
{
  LPVOID lpvArea = ((void*)0);
  UINT uBlockUsed;

  if( size > (dwBlockSize - sizeof(BOOL)) )
  {
    FIXME( "Size exceeded. Request of 0x%08x\n", size );
    size = dwBlockSize - sizeof(BOOL);
  }


  uBlockUsed = 0;
  while( uBlockUsed < dwMaxBlock && lpMemArea[ uBlockUsed ].used ) { uBlockUsed++; }

  if( uBlockUsed < dwMaxBlock )
  {

    lpMemArea[ uBlockUsed ].used = TRUE;
    lpvArea = lpMemArea[ uBlockUsed ].data;
  }
  else
  {
    ERR( "No free block found\n" );
    return ((void*)0);
  }

  if( flags & HEAP_ZERO_MEMORY )
  {
    ZeroMemory( lpvArea, size );
  }

  return lpvArea;
}
