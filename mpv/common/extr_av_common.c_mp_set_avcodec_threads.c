
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_3__ {int thread_count; } ;
typedef TYPE_1__ AVCodecContext ;


 int MPMIN (int,int) ;
 int av_cpu_count () ;
 int mp_verbose (struct mp_log*,char*,int) ;
 int mp_warn (struct mp_log*,char*) ;

void mp_set_avcodec_threads(struct mp_log *l, AVCodecContext *avctx, int threads)
{
    if (threads == 0) {
        threads = av_cpu_count();
        if (threads < 1) {
            mp_warn(l, "Could not determine thread count to use, defaulting to 1.\n");
            threads = 1;
        } else {
            mp_verbose(l, "Detected %d logical cores.\n", threads);
            if (threads > 1)
                threads += 1;
        }


        threads = MPMIN(threads, 16);
    }
    mp_verbose(l, "Requesting %d threads for decoding.\n", threads);
    avctx->thread_count = threads;
}
