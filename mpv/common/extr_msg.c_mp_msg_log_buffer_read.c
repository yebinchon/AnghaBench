
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mp_log_buffer_entry ;
struct mp_log_buffer {int ring; } ;
typedef int ptr ;


 int abort () ;
 int mp_ring_read (int ,unsigned char*,int) ;

struct mp_log_buffer_entry *mp_msg_log_buffer_read(struct mp_log_buffer *buffer)
{
    void *ptr = ((void*)0);
    int read = mp_ring_read(buffer->ring, (unsigned char *)&ptr, sizeof(ptr));
    if (read == 0)
        return ((void*)0);
    if (read != sizeof(ptr))
        abort();
    return ptr;
}
