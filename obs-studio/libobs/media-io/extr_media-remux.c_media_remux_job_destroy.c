
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* media_remux_job_t ;
struct TYPE_8__ {int pb; TYPE_1__* oformat; } ;
struct TYPE_7__ {TYPE_5__* ofmt_ctx; int ifmt_ctx; } ;
struct TYPE_6__ {int flags; } ;


 int AVFMT_NOFILE ;
 int avformat_close_input (int *) ;
 int avformat_free_context (TYPE_5__*) ;
 int avio_close (int ) ;
 int bfree (TYPE_2__*) ;

void media_remux_job_destroy(media_remux_job_t job)
{
 if (!job)
  return;

 avformat_close_input(&job->ifmt_ctx);

 if (job->ofmt_ctx && !(job->ofmt_ctx->oformat->flags & AVFMT_NOFILE))
  avio_close(job->ofmt_ctx->pb);

 avformat_free_context(job->ofmt_ctx);

 bfree(job);
}
