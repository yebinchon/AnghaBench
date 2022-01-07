
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ud {int dummy; } ;


 int inp_next (struct ud*) ;

__attribute__((used)) static uint64_t
inp_uint64(struct ud* u)
{
  uint64_t r, ret;

  ret = inp_next(u);
  r = inp_next(u);
  ret = ret | (r << 8);
  r = inp_next(u);
  ret = ret | (r << 16);
  r = inp_next(u);
  ret = ret | (r << 24);
  r = inp_next(u);
  ret = ret | (r << 32);
  r = inp_next(u);
  ret = ret | (r << 40);
  r = inp_next(u);
  ret = ret | (r << 48);
  r = inp_next(u);
  return ret | (r << 56);
}
