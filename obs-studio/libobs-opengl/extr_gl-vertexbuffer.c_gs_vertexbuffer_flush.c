
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ gs_vertbuffer_t ;


 int gs_vertexbuffer_flush_internal (TYPE_1__*,int ) ;

void gs_vertexbuffer_flush(gs_vertbuffer_t *vb)
{
 gs_vertexbuffer_flush_internal(vb, vb->data);
}
