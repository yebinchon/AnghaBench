
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; int w; } ;
struct rawfb_context {TYPE_1__ fb; } ;
struct nk_color {int dummy; } ;


 int nk_rawfb_fill_rect (struct rawfb_context const*,int ,int ,int ,int ,int ,struct nk_color const) ;

__attribute__((used)) static void
nk_rawfb_clear(const struct rawfb_context *rawfb, const struct nk_color col)
{
    nk_rawfb_fill_rect(rawfb, 0, 0, rawfb->fb.w, rawfb->fb.h, 0, col);
}
