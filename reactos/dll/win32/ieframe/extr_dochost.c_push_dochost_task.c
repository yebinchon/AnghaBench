
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_proc_t ;
struct TYPE_5__ {int entry; int destr; int proc; } ;
typedef TYPE_1__ task_header_t ;
typedef int task_destr_t ;
struct TYPE_6__ {int frame_hwnd; int task_queue; } ;
typedef TYPE_2__ DocHost ;
typedef scalar_t__ BOOL ;


 int PostMessageW (int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_DOCHOSTTASK ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

void push_dochost_task(DocHost *This, task_header_t *task, task_proc_t proc, task_destr_t destr, BOOL send)
{
    BOOL is_empty;

    task->proc = proc;
    task->destr = destr;

    is_empty = list_empty(&This->task_queue);
    list_add_tail(&This->task_queue, &task->entry);

    if(send)
        SendMessageW(This->frame_hwnd, WM_DOCHOSTTASK, 0, 0);
    else if(is_empty)
        PostMessageW(This->frame_hwnd, WM_DOCHOSTTASK, 0, 0);
}
