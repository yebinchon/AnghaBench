
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PWCHAR ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;

void ConsumeRegValueString( PWCHAR Value ) {
  if (Value) HeapFree(GetProcessHeap(), 0, Value);
}
