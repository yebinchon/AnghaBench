
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bsc; } ;
typedef TYPE_1__ task_navigate_bsc_t ;
typedef int task_header_t ;
struct TYPE_7__ {int hwnd; } ;
typedef TYPE_2__ DocHost ;


 int create_doc_view_hwnd (TYPE_2__*) ;
 int navigate_bsc (TYPE_2__*,int ,int *) ;

__attribute__((used)) static void navigate_bsc_proc(DocHost *This, task_header_t *t)
{
    task_navigate_bsc_t *task = (task_navigate_bsc_t*)t;

    if(!This->hwnd)
        create_doc_view_hwnd(This);

    navigate_bsc(This, task->bsc, ((void*)0));
}
