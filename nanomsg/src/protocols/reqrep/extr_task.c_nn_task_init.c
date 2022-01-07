
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_task {int id; } ;



void nn_task_init (struct nn_task *self, uint32_t id)
{
    self->id = id;
}
