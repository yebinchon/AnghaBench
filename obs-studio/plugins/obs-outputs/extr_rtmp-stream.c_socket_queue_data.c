
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {scalar_t__ write_buf_len; scalar_t__ write_buf_size; scalar_t__ write_buf; int buffer_has_data_event; int write_buf_mutex; int buffer_space_available_event; int rtmp; } ;
typedef int RTMPSockBuf ;


 int RTMP_IsConnected (int *) ;
 int UNUSED_PARAMETER (int *) ;
 int memcpy (scalar_t__,char const*,int) ;
 int os_event_signal (int ) ;
 scalar_t__ os_event_wait (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int socket_queue_data(RTMPSockBuf *sb, const char *data, int len,
        void *arg)
{
 UNUSED_PARAMETER(sb);

 struct rtmp_stream *stream = arg;

retry_send:

 if (!RTMP_IsConnected(&stream->rtmp))
  return 0;

 pthread_mutex_lock(&stream->write_buf_mutex);

 if (stream->write_buf_len + len > stream->write_buf_size) {

  pthread_mutex_unlock(&stream->write_buf_mutex);

  if (os_event_wait(stream->buffer_space_available_event)) {
   return 0;
  }

  goto retry_send;
 }

 memcpy(stream->write_buf + stream->write_buf_len, data, len);
 stream->write_buf_len += len;

 pthread_mutex_unlock(&stream->write_buf_mutex);

 os_event_signal(stream->buffer_has_data_event);

 return len;
}
