
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ringbuf_t ;
struct TYPE_4__ {struct TYPE_4__* buf; } ;


 int lwIP_ASSERT (int) ;
 int os_free (TYPE_1__*) ;

void ringbuf_free(ringbuf_t *rb)
{
 lwIP_ASSERT(rb && *rb);
 os_free((*rb)->buf);
 os_free(*rb);
 *rb = ((void*)0);
}
