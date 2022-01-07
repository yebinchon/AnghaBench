
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gc_globals ;
 int root_buffer_dtor (int *) ;

void gc_globals_dtor(void)
{

 root_buffer_dtor(&gc_globals);

}
