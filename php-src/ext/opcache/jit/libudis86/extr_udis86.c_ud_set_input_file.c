
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int * inp_file; int inp_hook; } ;
typedef int FILE ;


 int inp_file_hook ;
 int ud_inp_init (struct ud*) ;

void
ud_set_input_file(register struct ud* u, FILE* f)
{
  ud_inp_init(u);
  u->inp_hook = inp_file_hook;
  u->inp_file = f;
}
