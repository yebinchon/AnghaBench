
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int dbr_cur_bitrate; int output; } ;
typedef int obs_encoder_t ;
typedef int obs_data_t ;


 int obs_data_release (int *) ;
 int obs_data_set_int (int *,char*,int ) ;
 int * obs_encoder_get_settings (int *) ;
 int obs_encoder_update (int *,int *) ;
 int * obs_output_get_video_encoder (int ) ;

__attribute__((used)) static void dbr_set_bitrate(struct rtmp_stream *stream)
{
 obs_encoder_t *vencoder = obs_output_get_video_encoder(stream->output);
 obs_data_t *settings = obs_encoder_get_settings(vencoder);

 obs_data_set_int(settings, "bitrate", stream->dbr_cur_bitrate);
 obs_encoder_update(vencoder, settings);

 obs_data_release(settings);
}
