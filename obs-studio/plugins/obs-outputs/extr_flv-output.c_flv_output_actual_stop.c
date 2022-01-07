
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flv_output {int output; scalar_t__ file; int last_packet_ts; int active; } ;


 int fclose (scalar_t__) ;
 int info (char*) ;
 int obs_output_end_data_capture (int ) ;
 int obs_output_signal_stop (int ,int) ;
 int os_atomic_set_bool (int *,int) ;
 int os_ftelli64 (scalar_t__) ;
 int write_file_info (scalar_t__,int ,int ) ;

__attribute__((used)) static void flv_output_actual_stop(struct flv_output *stream, int code)
{
 os_atomic_set_bool(&stream->active, 0);

 if (stream->file) {
  write_file_info(stream->file, stream->last_packet_ts,
    os_ftelli64(stream->file));

  fclose(stream->file);
 }
 if (code) {
  obs_output_signal_stop(stream->output, code);
 } else {
  obs_output_end_data_capture(stream->output);
 }

 info("FLV file output complete");
}
