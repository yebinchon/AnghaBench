
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {int (* cb ) (void*) ;int jobs; void* data; } ;


 scalar_t__ LIKELY (int) ;
 int assert (int (*) (void*)) ;
 struct job* calloc (int,int) ;
 int free (struct job*) ;
 int jobs ;
 int list_add (int *,int *) ;
 int lwan_status_critical_perror (char*) ;
 int lwan_status_warning (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int queue_mutex ;

void lwan_job_add(bool (*cb)(void *data), void *data)
{
    assert(cb);

    struct job *job = calloc(1, sizeof(*job));
    if (!job)
        lwan_status_critical_perror("calloc");

    job->cb = cb;
    job->data = data;

    if (LIKELY(!pthread_mutex_lock(&queue_mutex))) {
        list_add(&jobs, &job->jobs);
        pthread_mutex_unlock(&queue_mutex);
    } else {
        lwan_status_warning("Couldn't lock job mutex");
        free(job);
    }
}
