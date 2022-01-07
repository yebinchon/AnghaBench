
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *) ;

int GetLongestChildKeyName( HANDLE RegHandle ) {
  LONG Status;
  DWORD MaxAdapterName;

  Status = RegQueryInfoKeyW(RegHandle,
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0),
       &MaxAdapterName,
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0),
       ((void*)0));
  if (Status == ERROR_SUCCESS)
    return MaxAdapterName + 1;
  else
    return -1;
}
