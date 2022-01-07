
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* PWCHAR ;
typedef scalar_t__ LONG ;
typedef int HANDLE ;
typedef size_t DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int GetLongestChildKeyName (int ) ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__ RegEnumKeyExW (int ,size_t,scalar_t__*,size_t*,int *,int *,int *,int *) ;

PWCHAR GetNthChildKeyName( HANDLE RegHandle, DWORD n ) {
  LONG Status;
  int MaxAdapterName = GetLongestChildKeyName( RegHandle );
  PWCHAR Value;
  DWORD ValueLen;

  if (MaxAdapterName == -1)
    return 0;

  ValueLen = MaxAdapterName;
  Value = (PWCHAR)HeapAlloc( GetProcessHeap(), 0, MaxAdapterName * sizeof(WCHAR) );
  if (!Value) return 0;

  Status = RegEnumKeyExW( RegHandle, n, Value, &ValueLen,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
  if (Status != ERROR_SUCCESS) {
    HeapFree(GetProcessHeap(), 0, Value);
    return 0;
  } else {
    Value[ValueLen] = 0;
    return Value;
  }
}
