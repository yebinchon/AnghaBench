
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gs_vb_data {int dummy; } ;
struct TYPE_3__ {struct gs_vb_data* data; } ;
typedef TYPE_1__ gs_vertbuffer_t ;



struct gs_vb_data *gs_vertexbuffer_get_data(const gs_vertbuffer_t *vb)
{
 return vb->data;
}
