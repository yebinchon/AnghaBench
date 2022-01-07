
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;
typedef scalar_t__ rk_error ;


 scalar_t__ rk_devfill (void*,size_t,int) ;
 int rk_fill (void*,size_t,int *) ;

rk_error rk_altfill(void *buffer, size_t size, int strong, rk_state *state) {
  rk_error err;

  err = rk_devfill(buffer, size, strong);
  if (err) {
    rk_fill(buffer, size, state);
  }
  return err;
}
