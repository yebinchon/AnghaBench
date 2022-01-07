
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int stop_event; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ os_event_try (int ) ;

__attribute__((used)) static inline bool stopping(struct rtmp_stream *stream)
{
 return os_event_try(stream->stop_event) != EAGAIN;
}
