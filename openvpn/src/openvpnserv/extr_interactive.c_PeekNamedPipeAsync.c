
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPHANDLE ;
typedef int HANDLE ;
typedef int DWORD ;


 int AsyncPipeOp (int ,int ,int *,int ,int ,int ) ;
 int peek ;

__attribute__((used)) static DWORD
PeekNamedPipeAsync(HANDLE pipe, DWORD count, LPHANDLE events)
{
    return AsyncPipeOp(peek, pipe, ((void*)0), 0, count, events);
}
