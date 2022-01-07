
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int mpc_undefine_unretained (int *,int ) ;

__attribute__((used)) static void mpc_soft_delete(mpc_val_t *x) {
  mpc_undefine_unretained(x, 0);
}
