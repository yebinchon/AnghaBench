
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPCWSTR ;
typedef int HANDLE ;


 int GetLastError () ;
 int ReturnError (int ,int ,int ,int,int *) ;
 int exit_event ;

__attribute__((used)) static VOID
ReturnLastError(HANDLE pipe, LPCWSTR func)
{
    ReturnError(pipe, GetLastError(), func, 1, &exit_event);
}
