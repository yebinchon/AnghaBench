
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int iget; int iput; } ;
typedef TYPE_1__ ringbuf_t ;



__attribute__((used)) static inline size_t ringbuf_free(ringbuf_t *r) {
    return (r->size + r->iget - r->iput - 1) % r->size;
}
