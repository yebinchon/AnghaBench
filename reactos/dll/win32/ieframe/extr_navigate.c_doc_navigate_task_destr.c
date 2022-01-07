
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ post_data; int headers; int url; } ;
typedef TYPE_1__ task_doc_navigate_t ;


 int SafeArrayDestroy (scalar_t__) ;
 int SysFreeString (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void doc_navigate_task_destr(task_header_t *t)
{
    task_doc_navigate_t *task = (task_doc_navigate_t*)t;

    SysFreeString(task->url);
    SysFreeString(task->headers);
    if(task->post_data)
        SafeArrayDestroy(task->post_data);
    heap_free(task);
}
