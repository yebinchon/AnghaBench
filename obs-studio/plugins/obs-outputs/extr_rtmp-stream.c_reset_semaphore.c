
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int send_sem; } ;


 int os_sem_destroy (int ) ;
 scalar_t__ os_sem_init (int *,int ) ;

__attribute__((used)) static inline bool reset_semaphore(struct rtmp_stream *stream)
{
 os_sem_destroy(stream->send_sem);
 return os_sem_init(&stream->send_sem, 0) == 0;
}
