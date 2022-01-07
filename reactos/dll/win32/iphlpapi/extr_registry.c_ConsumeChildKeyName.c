
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PWCHAR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;

void ConsumeChildKeyName( PWCHAR Name ) {
  if (Name) HeapFree( GetProcessHeap(), 0, Name );
}
