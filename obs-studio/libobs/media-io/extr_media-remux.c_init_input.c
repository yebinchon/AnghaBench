
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* media_remux_job_t ;
struct TYPE_3__ {int ifmt_ctx; } ;


 int LOG_ERROR ;
 int av_dump_format (int ,int ,char const*,int) ;
 int avformat_find_stream_info (int ,int *) ;
 int avformat_open_input (int *,char const*,int *,int *) ;
 int blog (int ,char*,...) ;

__attribute__((used)) static inline bool init_input(media_remux_job_t job, const char *in_filename)
{
 int ret = avformat_open_input(&job->ifmt_ctx, in_filename, ((void*)0), ((void*)0));
 if (ret < 0) {
  blog(LOG_ERROR, "media_remux: Could not open input file '%s'",
       in_filename);
  return 0;
 }

 ret = avformat_find_stream_info(job->ifmt_ctx, ((void*)0));
 if (ret < 0) {
  blog(LOG_ERROR, "media_remux: Failed to retrieve input stream"
    " information");
  return 0;
 }


 av_dump_format(job->ifmt_ctx, 0, in_filename, 0);

 return 1;
}
