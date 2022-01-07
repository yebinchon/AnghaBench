
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int sb_socket; } ;
struct TYPE_4__ {TYPE_1__ m_sb; } ;
struct rtmp_stream {TYPE_2__ rtmp; } ;
typedef int ssize_t ;
typedef TYPE_2__ RTMP ;


 int LOG_ERROR ;
 int WSAGetLastError () ;
 int do_log (int ,char*,int,int) ;
 int errno ;
 int recv (int ,int *,size_t,int ) ;

__attribute__((used)) static bool discard_recv_data(struct rtmp_stream *stream, size_t size)
{
 RTMP *rtmp = &stream->rtmp;
 uint8_t buf[512];



 ssize_t ret;


 do {
  size_t bytes = size > 512 ? 512 : size;
  size -= bytes;




  ret = recv(rtmp->m_sb.sb_socket, buf, bytes, 0);


  if (ret <= 0) {



   int error = errno;

   if (ret < 0) {
    do_log(LOG_ERROR, "recv error: %d (%d bytes)",
           error, (int)size);
   }
   return 0;
  }
 } while (size > 0);

 return 1;
}
