
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float size; int color; int align; scalar_t__ spacing; scalar_t__ blur; scalar_t__ font; } ;
typedef TYPE_1__ FONSstate ;
typedef int FONScontext ;


 int FONS_ALIGN_BASELINE ;
 int FONS_ALIGN_LEFT ;
 TYPE_1__* fons__getState (int *) ;

void fonsClearState(FONScontext* stash)
{
 FONSstate* state = fons__getState(stash);
 state->size = 12.0f;
 state->color = 0xffffffff;
 state->font = 0;
 state->blur = 0;
 state->spacing = 0;
 state->align = FONS_ALIGN_LEFT | FONS_ALIGN_BASELINE;
}
