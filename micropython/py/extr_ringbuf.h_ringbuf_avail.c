
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; size_t iput; size_t iget; } ;
typedef TYPE_1__ ringbuf_t ;



__attribute__((used)) static inline size_t ringbuf_avail(ringbuf_t *r) {
    return (r->size + r->iput - r->iget) % r->size;
}
