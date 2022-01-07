
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {void (* translator ) (struct ud*) ;} ;



extern void
ud_set_syntax(struct ud* u, void (*t)(struct ud*))
{
  u->translator = t;
}
