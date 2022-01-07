
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; scalar_t__ buffer; } ;
typedef TYPE_1__ gs_indexbuffer_t ;


 int bfree (TYPE_1__*) ;
 int gl_delete_buffers (int,scalar_t__*) ;

void gs_indexbuffer_destroy(gs_indexbuffer_t *ib)
{
 if (ib) {
  if (ib->buffer)
   gl_delete_buffers(1, &ib->buffer);

  bfree(ib->data);
  bfree(ib);
 }
}
