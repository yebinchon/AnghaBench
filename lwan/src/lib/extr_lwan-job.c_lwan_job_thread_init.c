
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int SCHED_IDLE ;
 int assert (int) ;
 int job_thread ;
 int jobs ;
 int list_head_init (int *) ;
 int lwan_status_critical_perror (char*) ;
 int lwan_status_debug (char*) ;
 int lwan_status_perror (char*) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_setschedparam (int ,int ,struct sched_param*) ;
 int running ;
 int self ;

void lwan_job_thread_init(void)
{
    assert(!running);

    lwan_status_debug("Initializing low priority job thread");

    list_head_init(&jobs);

    running = 1;
    if (pthread_create(&self, ((void*)0), job_thread, ((void*)0)) < 0)
        lwan_status_critical_perror("pthread_create");
}
