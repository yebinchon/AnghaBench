
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gc_protected; scalar_t__ zval_marked_grey; scalar_t__ zval_remove_from_buffer; scalar_t__ zval_buffered; scalar_t__ zval_possible_root; scalar_t__ root_buf_peak; scalar_t__ root_buf_length; scalar_t__ collected; scalar_t__ gc_runs; scalar_t__ num_roots; void* buf_size; void* gc_threshold; void* first_unused; void* unused; int * buf; scalar_t__ gc_full; scalar_t__ gc_active; scalar_t__ gc_enabled; } ;
typedef TYPE_1__ zend_gc_globals ;


 void* GC_INVALID ;

__attribute__((used)) static void gc_globals_ctor_ex(zend_gc_globals *gc_globals)
{
 gc_globals->gc_enabled = 0;
 gc_globals->gc_active = 0;
 gc_globals->gc_protected = 1;
 gc_globals->gc_full = 0;

 gc_globals->buf = ((void*)0);
 gc_globals->unused = GC_INVALID;
 gc_globals->first_unused = GC_INVALID;
 gc_globals->gc_threshold = GC_INVALID;
 gc_globals->buf_size = GC_INVALID;
 gc_globals->num_roots = 0;

 gc_globals->gc_runs = 0;
 gc_globals->collected = 0;
}
