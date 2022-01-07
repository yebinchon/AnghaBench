
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used; } ;
typedef int * LPVOID ;
typedef size_t DWORD ;
typedef int BYTE ;


 int * CONTAINING_RECORD (int *,int ,int ) ;
 int DPLAYX_MEM_SLICE ;
 int FALSE ;
 int data ;
 int dwBlockSize ;
 TYPE_1__* lpMemArea ;

__attribute__((used)) static void DPLAYX_PrivHeapFree( LPVOID addr )
{
  LPVOID lpAddrStart;
  DWORD dwBlockUsed;


  if( addr == ((void*)0) )
  {
    return;
  }

  lpAddrStart = CONTAINING_RECORD(addr, DPLAYX_MEM_SLICE, data);
  dwBlockUsed = ((BYTE*)lpAddrStart - (BYTE*)lpMemArea)/dwBlockSize;

  lpMemArea[ dwBlockUsed ].used = FALSE;
}
