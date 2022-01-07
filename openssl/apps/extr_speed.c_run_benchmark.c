
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * inprogress_job; int wait_ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int looparg_item ;
typedef int fd_set ;
typedef scalar_t__ OSSL_ASYNC_FD ;
typedef scalar_t__ DWORD ;






 int ASYNC_WAIT_CTX_get_all_fds (int ,scalar_t__*,size_t*) ;
 int ASYNC_start_job (int **,int ,int*,int (*) (void*),void*,int) ;
 int BIO_printf (int ,char*,...) ;
 scalar_t__ EINTR ;
 int ERR_print_errors (int ) ;
 int FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int PeekNamedPipe (scalar_t__,int *,int ,int *,scalar_t__*,int *) ;
 int bio_err ;
 scalar_t__ errno ;
 int run ;
 int select (scalar_t__,int *,int *,int *,int *) ;

__attribute__((used)) static int run_benchmark(int async_jobs,
                         int (*loop_function) (void *), loopargs_t * loopargs)
{
    int job_op_count = 0;
    int total_op_count = 0;
    int num_inprogress = 0;
    int error = 0, i = 0, ret = 0;
    OSSL_ASYNC_FD job_fd = 0;
    size_t num_job_fds = 0;

    run = 1;

    if (async_jobs == 0) {
        return loop_function((void *)&loopargs);
    }

    for (i = 0; i < async_jobs && !error; i++) {
        loopargs_t *looparg_item = loopargs + i;


        ret = ASYNC_start_job(&loopargs[i].inprogress_job, loopargs[i].wait_ctx,
                              &job_op_count, loop_function,
                              (void *)&looparg_item, sizeof(looparg_item));
        switch (ret) {
        case 128:
            ++num_inprogress;
            break;
        case 130:
            if (job_op_count == -1) {
                error = 1;
            } else {
                total_op_count += job_op_count;
            }
            break;
        case 129:
        case 131:
            BIO_printf(bio_err, "Failure in the job\n");
            ERR_print_errors(bio_err);
            error = 1;
            break;
        }
    }

    while (num_inprogress > 0) {
        for (i = 0; i < async_jobs; i++) {
            if (loopargs[i].inprogress_job == ((void*)0))
                continue;

            if (!ASYNC_WAIT_CTX_get_all_fds
                (loopargs[i].wait_ctx, ((void*)0), &num_job_fds)
                || num_job_fds > 1) {
                BIO_printf(bio_err, "Too many fds in ASYNC_WAIT_CTX\n");
                ERR_print_errors(bio_err);
                error = 1;
                break;
            }
            ASYNC_WAIT_CTX_get_all_fds(loopargs[i].wait_ctx, &job_fd,
                                       &num_job_fds);
            ret = ASYNC_start_job(&loopargs[i].inprogress_job,
                                  loopargs[i].wait_ctx, &job_op_count,
                                  loop_function, (void *)(loopargs + i),
                                  sizeof(loopargs_t));
            switch (ret) {
            case 128:
                break;
            case 130:
                if (job_op_count == -1) {
                    error = 1;
                } else {
                    total_op_count += job_op_count;
                }
                --num_inprogress;
                loopargs[i].inprogress_job = ((void*)0);
                break;
            case 129:
            case 131:
                --num_inprogress;
                loopargs[i].inprogress_job = ((void*)0);
                BIO_printf(bio_err, "Failure in the job\n");
                ERR_print_errors(bio_err);
                error = 1;
                break;
            }
        }
    }

    return error ? -1 : total_op_count;
}
