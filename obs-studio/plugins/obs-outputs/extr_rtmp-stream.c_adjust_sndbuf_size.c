
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_socket; } ;
struct TYPE_4__ {TYPE_1__ m_sb; } ;
struct rtmp_stream {TYPE_2__ rtmp; } ;
typedef int socklen_t ;


 int SOL_SOCKET ;
 int SO_SNDBUF ;
 int getsockopt (int ,int ,int ,char*,int*) ;
 int setsockopt (int ,int ,int ,char const*,int) ;

__attribute__((used)) static void adjust_sndbuf_size(struct rtmp_stream *stream, int new_size)
{
 int cur_sendbuf_size = new_size;
 socklen_t int_size = sizeof(int);

 getsockopt(stream->rtmp.m_sb.sb_socket, SOL_SOCKET, SO_SNDBUF,
     (char *)&cur_sendbuf_size, &int_size);

 if (cur_sendbuf_size < new_size) {
  cur_sendbuf_size = new_size;
  setsockopt(stream->rtmp.m_sb.sb_socket, SOL_SOCKET, SO_SNDBUF,
      (const char *)&cur_sendbuf_size, int_size);
 }
}
