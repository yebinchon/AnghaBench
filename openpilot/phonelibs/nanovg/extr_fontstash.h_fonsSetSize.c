
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float size; } ;
typedef int FONScontext ;


 TYPE_1__* fons__getState (int *) ;

void fonsSetSize(FONScontext* stash, float size)
{
 fons__getState(stash)->size = size;
}
