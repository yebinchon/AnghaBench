
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int output; } ;
struct dstr {char* array; int member_0; } ;
typedef int obs_data_t ;


 int dstr_catf (struct dstr*,char*,char*) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int log_muxer_params (struct ffmpeg_muxer*,char*) ;
 int obs_data_get_string (int *,char*) ;
 int obs_data_release (int *) ;
 int * obs_output_get_settings (int ) ;

__attribute__((used)) static void add_muxer_params(struct dstr *cmd, struct ffmpeg_muxer *stream)
{
 obs_data_t *settings = obs_output_get_settings(stream->output);
 struct dstr mux = {0};

 dstr_copy(&mux, obs_data_get_string(settings, "muxer_settings"));

 log_muxer_params(stream, mux.array);

 dstr_replace(&mux, "\"", "\\\"");
 obs_data_release(settings);

 dstr_catf(cmd, "\"%s\" ", mux.array ? mux.array : "");

 dstr_free(&mux);
}
