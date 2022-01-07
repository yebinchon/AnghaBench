
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int arg; int (* routine ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void *nn_thread_main_routine (void *arg)
{
    struct nn_thread *self;

    self = (struct nn_thread*) arg;


    self->routine (self->arg);
    return ((void*)0);
}
