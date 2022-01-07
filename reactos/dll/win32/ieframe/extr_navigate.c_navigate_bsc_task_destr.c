
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* bsc; } ;
typedef TYPE_2__ task_navigate_bsc_t ;
typedef int task_header_t ;
struct TYPE_4__ {int IBindStatusCallback_iface; } ;


 int IBindStatusCallback_Release (int *) ;
 int heap_free (TYPE_2__*) ;

__attribute__((used)) static void navigate_bsc_task_destr(task_header_t *t)
{
    task_navigate_bsc_t *task = (task_navigate_bsc_t*)t;

    IBindStatusCallback_Release(&task->bsc->IBindStatusCallback_iface);
    heap_free(task);
}
