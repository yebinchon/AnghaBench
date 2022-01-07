
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 scalar_t__ pthread_join (int ,int *) ;

__attribute__((used)) static int wait_for_thread(thread_t thread)
{
    return pthread_join(thread, ((void*)0)) == 0;
}
