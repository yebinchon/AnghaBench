
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_mem_t ;
struct TYPE_3__ {scalar_t__ mem; } ;
typedef TYPE_1__ mpc_input_t ;


 int MPC_INPUT_MEM_NUM ;

__attribute__((used)) static int mpc_mem_ptr(mpc_input_t *i, void *p) {
  return
    (char*)p >= (char*)(i->mem) &&
    (char*)p < (char*)(i->mem) + (MPC_INPUT_MEM_NUM * sizeof(mpc_mem_t));
}
