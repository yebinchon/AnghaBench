
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_advance (struct buffer*,int) ;

__attribute__((used)) static inline void
link_socket_write_post_size_adjust(int *size,
                                   int size_delta,
                                   struct buffer *buf)
{
    if (size_delta > 0 && *size > size_delta)
    {
        *size -= size_delta;
        if (!buf_advance(buf, size_delta))
        {
            *size = 0;
        }
    }
}
