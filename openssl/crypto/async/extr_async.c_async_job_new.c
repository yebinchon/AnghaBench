
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
typedef TYPE_1__ ASYNC_JOB ;


 int ASYNC_F_ASYNC_JOB_NEW ;
 int ASYNC_JOB_RUNNING ;
 int ASYNCerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static ASYNC_JOB *async_job_new(void)
{
    ASYNC_JOB *job = ((void*)0);

    job = OPENSSL_zalloc(sizeof(*job));
    if (job == ((void*)0)) {
        ASYNCerr(ASYNC_F_ASYNC_JOB_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    job->status = ASYNC_JOB_RUNNING;

    return job;
}
