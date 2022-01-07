
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flv_output {int dummy; } ;


 int write_audio_header (struct flv_output*) ;
 int write_meta_data (struct flv_output*) ;
 int write_video_header (struct flv_output*) ;

__attribute__((used)) static void write_headers(struct flv_output *stream)
{
 write_meta_data(stream);
 write_video_header(stream);
 write_audio_header(stream);
}
