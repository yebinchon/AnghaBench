
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpc_mem_t ;
struct TYPE_4__ {scalar_t__* mem_full; scalar_t__ mem; } ;
typedef TYPE_1__ mpc_input_t ;


 int free (void*) ;
 int mpc_mem_ptr (TYPE_1__*,void*) ;

__attribute__((used)) static void mpc_free(mpc_input_t *i, void *p) {
  size_t j;
  if (!mpc_mem_ptr(i, p)) { free(p); return; }
  j = ((size_t)(((char*)p) - ((char*)i->mem))) / sizeof(mpc_mem_t);
  i->mem_full[j] = 0;
}
