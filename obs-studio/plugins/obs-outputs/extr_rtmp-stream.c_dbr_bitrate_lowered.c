
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct rtmp_stream {long dbr_prev_bitrate; long dbr_est_bitrate; long dbr_cur_bitrate; scalar_t__ dbr_inc_timeout; TYPE_1__ dbr_frames; scalar_t__ dbr_data_size; } ;


 scalar_t__ DBR_INC_TIMER ;
 int LOG_INFO ;
 int blog (int ,char*,long,long) ;
 int circlebuf_pop_front (TYPE_1__*,int *,int ) ;
 int info (char*,...) ;
 scalar_t__ os_gettime_ns () ;

__attribute__((used)) static bool dbr_bitrate_lowered(struct rtmp_stream *stream)
{
 long prev_bitrate = stream->dbr_prev_bitrate;
 long est_bitrate = 0;
 long new_bitrate;

 if (stream->dbr_est_bitrate &&
     stream->dbr_est_bitrate < stream->dbr_cur_bitrate) {
  stream->dbr_data_size = 0;
  circlebuf_pop_front(&stream->dbr_frames, ((void*)0),
        stream->dbr_frames.size);
  est_bitrate = stream->dbr_est_bitrate / 100 * 100;
  if (est_bitrate < 50) {
   est_bitrate = 50;
  }
 }
 if (est_bitrate) {
  new_bitrate = est_bitrate;

 } else if (prev_bitrate) {
  new_bitrate = prev_bitrate;
  info("going back to prev bitrate");

 } else {
  return 0;
 }

 if (new_bitrate == stream->dbr_cur_bitrate) {
  return 0;
 }


 stream->dbr_prev_bitrate = 0;
 stream->dbr_cur_bitrate = new_bitrate;
 stream->dbr_inc_timeout = os_gettime_ns() + DBR_INC_TIMER;
 info("bitrate decreased to: %ld", stream->dbr_cur_bitrate);
 return 1;
}
