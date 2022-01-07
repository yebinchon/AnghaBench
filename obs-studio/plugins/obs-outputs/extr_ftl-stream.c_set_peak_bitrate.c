
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int peak_kbps; } ;
struct ftl_stream {int peak_kbps; TYPE_2__ params; int ftl_handle; int output; } ;
struct TYPE_4__ {int ending_rtt; int starting_rtt; int peak_kbps; scalar_t__ pkts_sent; scalar_t__ lost_pkts; } ;
typedef TYPE_1__ speed_test_t ;
typedef int obs_encoder_t ;
typedef int obs_data_t ;
typedef scalar_t__ ftl_status_t ;


 scalar_t__ FTL_SUCCESS ;
 scalar_t__ ftl_ingest_speed_test_ex (int *,int,int,TYPE_1__*) ;
 int ftl_ingest_update_params (int *,TYPE_2__*) ;
 int ftl_status_code_to_string (scalar_t__) ;
 int info (char*,int,int ,int ,int ,float) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_data_release (int *) ;
 int * obs_encoder_get_settings (int *) ;
 int * obs_output_get_video_encoder (int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static void set_peak_bitrate(struct ftl_stream *stream)
{
 int speedtest_kbps = 15000;
 int speedtest_duration = 1000;
 speed_test_t results;
 ftl_status_t status_code;

 status_code = ftl_ingest_speed_test_ex(&stream->ftl_handle,
            speedtest_kbps,
            speedtest_duration, &results);

 float percent_lost = 0;

 if (status_code == FTL_SUCCESS) {
  percent_lost = (float)results.lost_pkts * 100.f /
          (float)results.pkts_sent;
 } else {
  warn("Speed test failed with: %s",
       ftl_status_code_to_string(status_code));
 }


 obs_encoder_t *video_encoder =
  obs_output_get_video_encoder(stream->output);
 obs_data_t *video_settings = obs_encoder_get_settings(video_encoder);
 int user_desired_bitrate =
  (int)obs_data_get_int(video_settings, "bitrate");
 obs_data_release(video_settings);


 info("Speed test completed: User desired bitrate %d, Peak kbps %d, "
      "initial rtt %d, "
      "final rtt %d, %3.2f lost packets",
      user_desired_bitrate, results.peak_kbps, results.starting_rtt,
      results.ending_rtt, percent_lost);






 stream->peak_kbps = stream->params.peak_kbps =
  user_desired_bitrate * 12 / 10;
 ftl_ingest_update_params(&stream->ftl_handle, &stream->params);
}
