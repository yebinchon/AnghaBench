
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void thread_local_destructor(void *arg)
{
    unsigned *count;

    if (arg == ((void*)0))
        return;

    count = arg;

    (*count)++;
}
