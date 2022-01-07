
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffm_packet_info {int size; int member_0; } ;
typedef struct ffm_packet_info uint8_t ;
struct ffmpeg_mux {int dummy; } ;
typedef int info ;


 int ffmpeg_mux_header (struct ffmpeg_mux*,struct ffm_packet_info*,struct ffm_packet_info*) ;
 int free (struct ffm_packet_info*) ;
 struct ffm_packet_info* malloc (int) ;
 int safe_read (struct ffm_packet_info*,int) ;

__attribute__((used)) static bool ffmpeg_mux_get_header(struct ffmpeg_mux *ffm)
{
 struct ffm_packet_info info = {0};

 bool success = safe_read(&info, sizeof(info)) == sizeof(info);
 if (success) {
  uint8_t *data = malloc(info.size);

  if (safe_read(data, info.size) == info.size) {
   ffmpeg_mux_header(ffm, data, &info);
  } else {
   success = 0;
  }

  free(data);
 }

 return success;
}
