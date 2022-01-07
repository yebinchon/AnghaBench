
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct flv_output {int file; int start_dts_offset; int last_packet_ts; } ;
struct encoder_packet {int dts; } ;


 int bfree (int *) ;
 int flv_packet_mux (struct encoder_packet*,int ,int **,size_t*,int) ;
 int fwrite (int *,int,size_t,int ) ;
 int get_ms_time (struct encoder_packet*,int ) ;

__attribute__((used)) static int write_packet(struct flv_output *stream,
   struct encoder_packet *packet, bool is_header)
{
 uint8_t *data;
 size_t size;
 int ret = 0;

 stream->last_packet_ts = get_ms_time(packet, packet->dts);

 flv_packet_mux(packet, is_header ? 0 : stream->start_dts_offset, &data,
         &size, is_header);
 fwrite(data, 1, size, stream->file);
 bfree(data);

 return ret;
}
