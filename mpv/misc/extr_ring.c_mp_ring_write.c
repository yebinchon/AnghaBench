
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ring {int wpos; scalar_t__ buffer; } ;


 int MPMIN (int,int) ;
 int atomic_fetch_add (int *,int) ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int mp_ring_available (struct mp_ring*) ;
 int mp_ring_get_wpos (struct mp_ring*) ;
 int mp_ring_size (struct mp_ring*) ;

int mp_ring_write(struct mp_ring *buffer, unsigned char *src, int len)
{
    int size = mp_ring_size(buffer);
    int free = mp_ring_available(buffer);
    int write_len = MPMIN(len, free);
    int write_ptr = mp_ring_get_wpos(buffer) % size;

    int len1 = MPMIN(size - write_ptr, write_len);
    int len2 = write_len - len1;

    memcpy(buffer->buffer + write_ptr, src, len1);
    memcpy(buffer->buffer, src + len1, len2);

    atomic_fetch_add(&buffer->wpos, write_len);

    return write_len;
}
