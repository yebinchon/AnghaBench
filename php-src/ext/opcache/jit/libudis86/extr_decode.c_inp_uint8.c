
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ud {int dummy; } ;


 int inp_next (struct ud*) ;

__attribute__((used)) static uint8_t
inp_uint8(struct ud* u)
{
  return inp_next(u);
}
