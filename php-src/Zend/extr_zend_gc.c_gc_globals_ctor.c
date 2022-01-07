
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_gc_globals ;
typedef int ts_allocate_dtor ;
typedef int ts_allocate_ctor ;


 int gc_globals ;
 int gc_globals_ctor_ex (int *) ;
 int gc_globals_id ;
 int gc_globals_offset ;
 scalar_t__ root_buffer_dtor ;
 int ts_allocate_fast_id (int *,int *,int,int ,int ) ;

void gc_globals_ctor(void)
{



 gc_globals_ctor_ex(&gc_globals);

}
