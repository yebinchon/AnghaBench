
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int disconnected; } ;


 int os_atomic_load_bool (int *) ;

__attribute__((used)) static inline bool disconnected(struct rtmp_stream *stream)
{
 return os_atomic_load_bool(&stream->disconnected);
}
