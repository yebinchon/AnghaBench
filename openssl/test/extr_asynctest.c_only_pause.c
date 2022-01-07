
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC_pause_job () ;

__attribute__((used)) static int only_pause(void *args)
{
    ASYNC_pause_job();

    return 1;
}
