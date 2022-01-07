
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_indexbuffer_t ;
struct TYPE_3__ {int (* gs_indexbuffer_flush_direct ) (int *,void const*) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid_p2 (char*,int *,void const*) ;
 int stub1 (int *,void const*) ;
 TYPE_2__* thread_graphics ;

void gs_indexbuffer_flush_direct(gs_indexbuffer_t *indexbuffer,
     const void *data)
{
 if (!gs_valid_p2("gs_indexbuffer_flush_direct", indexbuffer, data))
  return;

 thread_graphics->exports.gs_indexbuffer_flush_direct(indexbuffer, data);
}
