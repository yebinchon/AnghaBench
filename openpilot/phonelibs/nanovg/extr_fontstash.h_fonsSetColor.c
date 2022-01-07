
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int color; } ;
typedef int FONScontext ;


 TYPE_1__* fons__getState (int *) ;

void fonsSetColor(FONScontext* stash, unsigned int color)
{
 fons__getState(stash)->color = color;
}
