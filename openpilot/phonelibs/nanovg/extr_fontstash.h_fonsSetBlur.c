
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float blur; } ;
typedef int FONScontext ;


 TYPE_1__* fons__getState (int *) ;

void fonsSetBlur(FONScontext* stash, float blur)
{
 fons__getState(stash)->blur = blur;
}
