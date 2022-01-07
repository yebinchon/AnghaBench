
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int inp_end; } ;



int
ud_input_end(const struct ud *u)
{
  return u->inp_end;
}
