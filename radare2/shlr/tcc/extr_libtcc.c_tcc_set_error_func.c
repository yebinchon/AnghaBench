
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* error_func ) (void*,char const*) ;void* error_opaque; } ;
typedef TYPE_1__ TCCState ;



void tcc_set_error_func(TCCState *s, void *error_opaque,
      void (*error_func)(void *opaque, const char *msg))
{
 s->error_opaque = error_opaque;
 s->error_func = error_func;
}
