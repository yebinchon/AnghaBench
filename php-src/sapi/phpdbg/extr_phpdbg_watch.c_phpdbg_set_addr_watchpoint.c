
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ptr; } ;
struct TYPE_5__ {size_t size; int elements; int * coll; int * ref; TYPE_1__ addr; } ;
typedef TYPE_2__ phpdbg_watchpoint_t ;


 int brml ;
 int zend_hash_init (int *,int,int ,int *,int ) ;

void phpdbg_set_addr_watchpoint(void *addr, size_t size, phpdbg_watchpoint_t *watch) {
 watch->addr.ptr = addr;
 watch->size = size;
 watch->ref = ((void*)0);
 watch->coll = ((void*)0);
 zend_hash_init(&watch->elements, 8, brml, ((void*)0), 0);
}
