
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efree (void*) ;

__attribute__((used)) static void free_from_zval_allocation(void *alloc_ptr_ptr)
{
 efree(*(void**)alloc_ptr_ptr);
}
