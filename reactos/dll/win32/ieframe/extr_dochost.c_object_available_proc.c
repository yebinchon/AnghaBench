
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_header_t ;
typedef int DocHost ;


 int object_available (int *) ;

__attribute__((used)) static void object_available_proc(DocHost *This, task_header_t *task)
{
    object_available(This);
}
