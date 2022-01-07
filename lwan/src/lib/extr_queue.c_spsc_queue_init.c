
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spsc_queue {size_t size; size_t mask; int tail; int head; int buffer; } ;


 int ATOMIC_INIT (int ,int ) ;
 int EINVAL ;
 int calloc (int,int) ;
 int errno ;
 size_t lwan_nextpow2 (size_t) ;

int spsc_queue_init(struct spsc_queue *q, size_t size)
{
    if (size == 0)
        return -EINVAL;

    size = lwan_nextpow2(size);
    q->buffer = calloc(1 + size, sizeof(int));
    if (!q->buffer)
        return -errno;

    ATOMIC_INIT(q->head, 0);
    ATOMIC_INIT(q->tail, 0);

    q->size = size;
    q->mask = size - 1;

    return 0;
}
