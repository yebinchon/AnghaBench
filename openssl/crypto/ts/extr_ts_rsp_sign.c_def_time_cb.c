
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
struct TS_resp_ctx {int dummy; } ;


 int TS_F_DEF_TIME_CB ;
 int TS_INFO_TIME_NOT_AVAILABLE ;
 int TS_RESP_CTX_add_failure_info (struct TS_resp_ctx*,int ) ;
 int TS_RESP_CTX_set_status_info (struct TS_resp_ctx*,int ,char*) ;
 int TS_R_TIME_SYSCALL_ERROR ;
 int TS_STATUS_REJECTION ;
 int TSerr (int ,int ) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int def_time_cb(struct TS_resp_ctx *ctx, void *data,
                       long *sec, long *usec)
{
    struct timeval tv;
    if (gettimeofday(&tv, ((void*)0)) != 0) {
        TSerr(TS_F_DEF_TIME_CB, TS_R_TIME_SYSCALL_ERROR);
        TS_RESP_CTX_set_status_info(ctx, TS_STATUS_REJECTION,
                                    "Time is not available.");
        TS_RESP_CTX_add_failure_info(ctx, TS_INFO_TIME_NOT_AVAILABLE);
        return 0;
    }
    *sec = tv.tv_sec;
    *usec = tv.tv_usec;

    return 1;
}
