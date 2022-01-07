
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float spacing; } ;
typedef int FONScontext ;


 TYPE_1__* fons__getState (int *) ;

void fonsSetSpacing(FONScontext* stash, float spacing)
{
 fons__getState(stash)->spacing = spacing;
}
