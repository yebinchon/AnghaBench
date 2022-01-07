
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_vb_data {int dummy; } ;
typedef int gs_vertbuffer_t ;


 int gs_vertexbuffer_flush_internal (int *,struct gs_vb_data const*) ;

void gs_vertexbuffer_flush_direct(gs_vertbuffer_t *vb,
      const struct gs_vb_data *data)
{
 gs_vertexbuffer_flush_internal(vb, data);
}
