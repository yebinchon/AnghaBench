
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_header_t ;


 int heap_free (int *) ;

__attribute__((used)) static void object_available_task_destr(task_header_t *task)
{
    heap_free(task);
}
