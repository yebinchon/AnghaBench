
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hEvent; } ;
typedef int OVERLAPPED ;
typedef TYPE_1__* LPOVERLAPPED ;
typedef int HANDLE ;


 int CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static HANDLE
InitOverlapped(LPOVERLAPPED overlapped)
{
    ZeroMemory(overlapped, sizeof(OVERLAPPED));
    overlapped->hEvent = CreateEvent(((void*)0), TRUE, FALSE, ((void*)0));
    return overlapped->hEvent;
}
