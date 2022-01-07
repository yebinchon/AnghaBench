
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* handleError ) (void*,int,int) ;void* errorUptr; } ;
typedef TYPE_1__ FONScontext ;



void fonsSetErrorCallback(FONScontext* stash, void (*callback)(void* uptr, int error, int val), void* uptr)
{
 if (stash == ((void*)0)) return;
 stash->handleError = callback;
 stash->errorUptr = uptr;
}
