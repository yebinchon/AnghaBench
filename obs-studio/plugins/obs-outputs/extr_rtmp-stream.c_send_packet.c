
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_long ;
struct TYPE_3__ {int sb_socket; } ;
struct TYPE_4__ {TYPE_1__ m_sb; } ;
struct rtmp_stream {size_t total_bytes_sent; TYPE_2__ rtmp; int start_dts_offset; int new_socket_loop; } ;
struct encoder_packet {int * data; } ;


 int FIONREAD ;
 int RTMP_Write (TYPE_2__*,char*,int,int) ;
 int bfree (int *) ;
 int discard_recv_data (struct rtmp_stream*,size_t) ;
 int droptest_cap_data_rate (struct rtmp_stream*,size_t) ;
 int flv_packet_mux (struct encoder_packet*,int ,int **,size_t*,int) ;
 int ioctl (int ,int ,int*) ;
 int ioctlsocket (int ,int ,int *) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;

__attribute__((used)) static int send_packet(struct rtmp_stream *stream,
         struct encoder_packet *packet, bool is_header,
         size_t idx)
{
 uint8_t *data;
 size_t size;
 int recv_size = 0;
 int ret = 0;

 if (!stream->new_socket_loop) {




  ret = ioctl(stream->rtmp.m_sb.sb_socket, FIONREAD, &recv_size);


  if (ret >= 0 && recv_size > 0) {
   if (!discard_recv_data(stream, (size_t)recv_size))
    return -1;
  }
 }

 flv_packet_mux(packet, is_header ? 0 : stream->start_dts_offset, &data,
         &size, is_header);





 ret = RTMP_Write(&stream->rtmp, (char *)data, (int)size, (int)idx);
 bfree(data);

 if (is_header)
  bfree(packet->data);
 else
  obs_encoder_packet_release(packet);

 stream->total_bytes_sent += size;
 return ret;
}
