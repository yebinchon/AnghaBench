
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {scalar_t__ handle; struct process* next; } ;
typedef scalar_t__ HANDLE ;


 int ERROR_INVALID_HANDLE ;
 int SetLastError (int ) ;
 struct process* process_first ;

struct process* process_find_by_handle(HANDLE hProcess)
{
    struct process* p;

    for (p = process_first; p && p->handle != hProcess; p = p->next);
    if (!p) SetLastError(ERROR_INVALID_HANDLE);
    return p;
}
