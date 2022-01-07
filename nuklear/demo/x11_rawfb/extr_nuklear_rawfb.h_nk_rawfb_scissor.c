
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int w; } ;
struct TYPE_4__ {void* h; void* w; void* y; void* x; } ;
struct rawfb_context {TYPE_1__ fb; TYPE_2__ scissors; } ;


 int MAX (float const,int ) ;
 void* MIN (int ,int ) ;

__attribute__((used)) static void
nk_rawfb_scissor(struct rawfb_context *rawfb,
                 const float x,
                 const float y,
                 const float w,
                 const float h)
{
    rawfb->scissors.x = MIN(MAX(x, 0), rawfb->fb.w);
    rawfb->scissors.y = MIN(MAX(y, 0), rawfb->fb.h);
    rawfb->scissors.w = MIN(MAX(w + x, 0), rawfb->fb.w);
    rawfb->scissors.h = MIN(MAX(h + y, 0), rawfb->fb.h);
}
