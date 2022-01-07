
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int (* inp_hook ) (struct ud*) ;} ;


 int ud_inp_init (struct ud*) ;

void
ud_set_input_hook(register struct ud* u, int (*hook)(struct ud*))
{
  ud_inp_init(u);
  u->inp_hook = hook;
}
