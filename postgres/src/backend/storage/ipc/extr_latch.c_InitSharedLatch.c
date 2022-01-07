
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sa ;
struct TYPE_7__ {int is_set; int is_shared; scalar_t__ owner_pid; int * event; } ;
struct TYPE_6__ {int nLength; int bInheritHandle; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef TYPE_2__ Latch ;


 int * CreateEvent (TYPE_1__*,int ,int ,int *) ;
 int ERROR ;
 int FALSE ;
 int GetLastError () ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int elog (int ,char*,int ) ;

void
InitSharedLatch(Latch *latch)
{
 latch->is_set = 0;
 latch->owner_pid = 0;
 latch->is_shared = 1;
}
