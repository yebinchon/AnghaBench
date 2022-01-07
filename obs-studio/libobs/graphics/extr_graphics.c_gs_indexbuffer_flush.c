
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_indexbuffer_t ;
struct TYPE_3__ {int (* gs_indexbuffer_flush ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid_p (char*,int *) ;
 int stub1 (int *) ;
 TYPE_2__* thread_graphics ;

void gs_indexbuffer_flush(gs_indexbuffer_t *indexbuffer)
{
 if (!gs_valid_p("gs_indexbuffer_flush", indexbuffer))
  return;

 thread_graphics->exports.gs_indexbuffer_flush(indexbuffer);
}
