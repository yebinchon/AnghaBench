
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_info {char const* s; char const* send; int options; char const* n; int num_comps; size_t num_subs; scalar_t__ is_conversion; scalar_t__ is_expression; scalar_t__ expansion; int * last_name; scalar_t__ next_sub; scalar_t__ next_comp; } ;



void
cplus_demangle_init_info (const char *mangled, int options, size_t len,
                          struct d_info *di)
{
  di->s = mangled;
  di->send = mangled + len;
  di->options = options;

  di->n = mangled;




  di->num_comps = 2 * len;
  di->next_comp = 0;



  di->num_subs = len;
  di->next_sub = 0;

  di->last_name = ((void*)0);

  di->expansion = 0;
  di->is_expression = 0;
  di->is_conversion = 0;
}
