
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int LPHANDLE ;
typedef int HANDLE ;
typedef int DWORD ;


 int AsyncPipeOp (int ,int ,int ,int ,int ,int ) ;
 int write ;

__attribute__((used)) static DWORD
WritePipeAsync(HANDLE pipe, LPVOID data, DWORD size, DWORD count, LPHANDLE events)
{
    return AsyncPipeOp(write, pipe, data, size, count, events);
}
