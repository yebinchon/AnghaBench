
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ zend_gc_globals ;


 int free (int *) ;

__attribute__((used)) static void root_buffer_dtor(zend_gc_globals *gc_globals)
{
 if (gc_globals->buf) {
  free(gc_globals->buf);
  gc_globals->buf = ((void*)0);
 }
}
